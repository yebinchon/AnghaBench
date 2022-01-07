
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_verify_callback_t ;
typedef int svn_repos_t ;
struct TYPE_14__ {scalar_t__ revision; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int (* svn_repos_notify_func_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_fs_t ;
typedef int * svn_fs_progress_notify_func_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct verify_fs_notify_func_baton_t {void* notify; void* notify_baton; int (* notify_func ) (void*,TYPE_1__*,int *) ;} ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CANCELLED ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 struct verify_fs_notify_func_baton_t* apr_palloc (int *,int) ;
 int report_error (scalar_t__,TYPE_3__*,int ,void*,int *) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_config (int *,int *) ;
 int svn_fs_path (int *,int *) ;
 int svn_fs_refresh_revision_props (int *,int *) ;
 TYPE_3__* svn_fs_verify (int ,int ,scalar_t__,scalar_t__,int *,struct verify_fs_notify_func_baton_t*,int ,void*,int *) ;
 int svn_fs_youngest_rev (scalar_t__*,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos_fs (int *) ;
 void* svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_verify_end ;
 int svn_repos_notify_verify_rev_end ;
 int svn_repos_notify_verify_rev_structure ;
 int * verify_fs_notify_func ;
 TYPE_3__* verify_one_revision (int *,scalar_t__,int (*) (void*,TYPE_1__*,int *),void*,scalar_t__,int ,int ,void*,int *) ;

svn_error_t *
svn_repos_verify_fs3(svn_repos_t *repos,
                     svn_revnum_t start_rev,
                     svn_revnum_t end_rev,
                     svn_boolean_t check_normalization,
                     svn_boolean_t metadata_only,
                     svn_repos_notify_func_t notify_func,
                     void *notify_baton,
                     svn_repos_verify_callback_t verify_callback,
                     void *verify_baton,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     apr_pool_t *pool)
{
  svn_fs_t *fs = svn_repos_fs(repos);
  svn_revnum_t youngest;
  svn_revnum_t rev;
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_repos_notify_t *notify;
  svn_fs_progress_notify_func_t verify_notify = ((void*)0);
  struct verify_fs_notify_func_baton_t *verify_notify_baton = ((void*)0);
  svn_error_t *err;



  SVN_ERR(svn_fs_refresh_revision_props(fs, pool));


  SVN_ERR(svn_fs_youngest_rev(&youngest, fs, pool));


  if (! SVN_IS_VALID_REVNUM(start_rev))
    start_rev = 0;
  if (! SVN_IS_VALID_REVNUM(end_rev))
    end_rev = youngest;


  if (start_rev > end_rev)
    return svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                             _("Start revision %ld"
                               " is greater than end revision %ld"),
                             start_rev, end_rev);
  if (end_rev > youngest)
    return svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                             _("End revision %ld is invalid "
                               "(youngest revision is %ld)"),
                             end_rev, youngest);



  if (notify_func)
    {
      notify = svn_repos_notify_create(svn_repos_notify_verify_rev_end, pool);

      verify_notify = verify_fs_notify_func;
      verify_notify_baton = apr_palloc(pool, sizeof(*verify_notify_baton));
      verify_notify_baton->notify_func = notify_func;
      verify_notify_baton->notify_baton = notify_baton;
      verify_notify_baton->notify
        = svn_repos_notify_create(svn_repos_notify_verify_rev_structure, pool);
    }


  err = svn_fs_verify(svn_fs_path(fs, pool), svn_fs_config(fs, pool),
                      start_rev, end_rev,
                      verify_notify, verify_notify_baton,
                      cancel_func, cancel_baton, pool);

  if (err && err->apr_err == SVN_ERR_CANCELLED)
    {
      return svn_error_trace(err);
    }
  else if (err)
    {
      SVN_ERR(report_error(SVN_INVALID_REVNUM, err, verify_callback,
                           verify_baton, iterpool));
    }

  if (!metadata_only)
    for (rev = start_rev; rev <= end_rev; rev++)
      {
        svn_pool_clear(iterpool);


        err = verify_one_revision(fs, rev, notify_func, notify_baton,
                                  start_rev, check_normalization,
                                  cancel_func, cancel_baton,
                                  iterpool);

        if (err && err->apr_err == SVN_ERR_CANCELLED)
          {
            return svn_error_trace(err);
          }
        else if (err)
          {
            SVN_ERR(report_error(rev, err, verify_callback, verify_baton,
                                 iterpool));
          }
        else if (notify_func)
          {

            notify->revision = rev;
            notify_func(notify_baton, notify, iterpool);
          }
      }


  if (notify_func)
    {
      notify = svn_repos_notify_create(svn_repos_notify_verify_end, iterpool);
      notify_func(notify_baton, notify, iterpool);
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
