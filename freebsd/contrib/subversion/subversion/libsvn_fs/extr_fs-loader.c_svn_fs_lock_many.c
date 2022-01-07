
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_10__ {char* token; } ;
typedef TYPE_3__ svn_fs_lock_target_t ;
typedef int * (* svn_fs_lock_callback_t ) (void*,int ,int *,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_8__ {int * (* lock ) (TYPE_2__*,int *,char const*,int ,int ,int ,int * (*) (void*,int ,int *,int *,int *),void*,int *,int *) ;} ;


 int SVN_ERR_FS_BAD_LOCK_TOKEN ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_ERR_XML_UNESCAPABLE_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 TYPE_3__* apr_hash_this_val (int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * stub1 (TYPE_2__*,int *,char const*,int ,int ,int ,int * (*) (void*,int ,int *,int *,int *),void*,int *,int *) ;
 int svn_ctype_isascii (char const) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 int svn_error_clear (int *) ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;
 int * svn_error_trace (int *) ;
 int svn_hash_sets (int *,int ,TYPE_3__ const*) ;
 int svn_xml_is_xml_safe (char const*,int) ;

svn_error_t *
svn_fs_lock_many(svn_fs_t *fs,
                 apr_hash_t *targets,
                 const char *comment,
                 svn_boolean_t is_dav_comment,
                 apr_time_t expiration_date,
                 svn_boolean_t steal_lock,
                 svn_fs_lock_callback_t lock_callback,
                 void *lock_baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *ok_targets = apr_hash_make(scratch_pool);
  svn_error_t *err, *cb_err = SVN_NO_ERROR;


  if (comment)
    if (! svn_xml_is_xml_safe(comment, strlen(comment)))
      return svn_error_create(SVN_ERR_XML_UNESCAPABLE_DATA, ((void*)0),
                              _("Lock comment contains illegal characters"));

  if (expiration_date < 0)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
              _("Negative expiration date passed to svn_fs_lock"));


  for (hi = apr_hash_first(scratch_pool, targets); hi; hi = apr_hash_next(hi))
    {
      const svn_fs_lock_target_t *target = apr_hash_this_val(hi);

      err = SVN_NO_ERROR;
      if (target->token)
        {
          const char *c;


          if (strncmp(target->token, "opaquelocktoken:", 16))
            err = svn_error_createf(SVN_ERR_FS_BAD_LOCK_TOKEN, ((void*)0),
                                    _("Lock token URI '%s' has bad scheme; "
                                      "expected '%s'"),
                                    target->token, "opaquelocktoken");

          if (!err)
            {
              for (c = target->token; *c && !err; c++)
                if (! svn_ctype_isascii(*c) || svn_ctype_iscntrl(*c))
                  err = svn_error_createf(
                          SVN_ERR_FS_BAD_LOCK_TOKEN, ((void*)0),
                          _("Lock token '%s' is not ASCII or is a "
                            "control character at byte %u"),
                          target->token,
                          (unsigned)(c - target->token));


              if (!err && !svn_xml_is_xml_safe(target->token,
                                               c - target->token))
                err = svn_error_createf(
                            SVN_ERR_FS_BAD_LOCK_TOKEN, ((void*)0),
                            _("Lock token URI '%s' is not XML-safe"),
                            target->token);
            }
        }

      if (err)
        {
          if (!cb_err && lock_callback)
            cb_err = lock_callback(lock_baton, apr_hash_this_key(hi),
                                   ((void*)0), err, scratch_pool);
          svn_error_clear(err);
        }
      else
        svn_hash_sets(ok_targets, apr_hash_this_key(hi), target);
    }

  if (!apr_hash_count(ok_targets))
    return svn_error_trace(cb_err);

  err = fs->vtable->lock(fs, ok_targets, comment, is_dav_comment,
                         expiration_date, steal_lock,
                         lock_callback, lock_baton,
                         result_pool, scratch_pool);

  if (err && cb_err)
    svn_error_compose(err, cb_err);
  else if (!err)
    err = cb_err;

  return svn_error_trace(err);
}
