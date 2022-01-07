
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char const* prop_name; scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc_notify_action_t ;
typedef int svn_wc__db_t ;
struct TYPE_15__ {int data; } ;
typedef TYPE_3__ svn_string_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct getter_baton {char const* local_abspath; TYPE_3__* mime_type; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_PROP_EOL_STYLE ;
 char const* SVN_PROP_EXECUTABLE ;
 char const* SVN_PROP_KEYWORDS ;
 char const* SVN_PROP_MIME_TYPE ;
 char const* SVN_PROP_NEEDS_LOCK ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int get_file_for_validation ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 TYPE_3__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_3__ const*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_prop_is_svn_prop (char const*) ;
 int svn_string_compare (TYPE_3__ const*,TYPE_3__*) ;
 scalar_t__ svn_subst_keywords_differ2 (int *,int *,int ,int *) ;
 int svn_wc__db_op_set_props (int *,char const*,int *,int ,int *,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__expand_keywords (int **,int *,char const*,int *,int ,int ,int *,int *) ;
 int svn_wc__wq_build_sync_file_flags (int **,int *,char const*,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int *,int *,int *) ;
 int svn_wc_canonicalize_svn_prop (TYPE_3__ const**,char const*,TYPE_3__ const*,char const*,scalar_t__,int ,int ,struct getter_baton*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_property_added ;
 int svn_wc_notify_property_deleted ;
 int svn_wc_notify_property_deleted_nonexistent ;
 int svn_wc_notify_property_modified ;

__attribute__((used)) static svn_error_t *
do_propset(svn_wc__db_t *db,
           const char *local_abspath,
           svn_node_kind_t kind,
           const char *name,
           const svn_string_t *value,
           svn_boolean_t skip_checks,
           svn_wc_notify_func2_t notify_func,
           void *notify_baton,
           apr_pool_t *scratch_pool)
{
  apr_hash_t *prophash;
  svn_wc_notify_action_t notify_action;
  svn_skel_t *work_item = ((void*)0);
  svn_boolean_t clear_recorded_info = FALSE;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR_W(svn_wc__db_read_props(&prophash, db, local_abspath,
                                  scratch_pool, scratch_pool),
            _("Failed to load current properties"));






  if (value && svn_prop_is_svn_prop(name))
    {
      const svn_string_t *new_value;
      struct getter_baton gb;

      gb.mime_type = svn_hash_gets(prophash, SVN_PROP_MIME_TYPE);
      gb.local_abspath = local_abspath;

      SVN_ERR(svn_wc_canonicalize_svn_prop(&new_value, name, value,
                                           local_abspath, kind,
                                           skip_checks,
                                           get_file_for_validation, &gb,
                                           scratch_pool));
      value = new_value;
    }

  if (kind == svn_node_file
        && (strcmp(name, SVN_PROP_EXECUTABLE) == 0
            || strcmp(name, SVN_PROP_NEEDS_LOCK) == 0))
    {
      SVN_ERR(svn_wc__wq_build_sync_file_flags(&work_item, db, local_abspath,
                                               scratch_pool, scratch_pool));
    }
  if (kind == svn_node_file && strcmp(name, SVN_PROP_KEYWORDS) == 0)
    {
      svn_string_t *old_value = svn_hash_gets(prophash, SVN_PROP_KEYWORDS);
      apr_hash_t *old_keywords, *new_keywords;

      if (old_value)
        SVN_ERR(svn_wc__expand_keywords(&old_keywords,
                                        db, local_abspath, ((void*)0),
                                        old_value->data, TRUE,
                                        scratch_pool, scratch_pool));
      else
        old_keywords = apr_hash_make(scratch_pool);

      if (value)
        SVN_ERR(svn_wc__expand_keywords(&new_keywords,
                                        db, local_abspath, ((void*)0),
                                        value->data, TRUE,
                                        scratch_pool, scratch_pool));
      else
        new_keywords = apr_hash_make(scratch_pool);

      if (svn_subst_keywords_differ2(old_keywords, new_keywords, FALSE,
                                     scratch_pool))
        {
          clear_recorded_info = TRUE;
        }
    }
  else if (kind == svn_node_file && strcmp(name, SVN_PROP_EOL_STYLE) == 0)
    {
      svn_string_t *old_value = svn_hash_gets(prophash, SVN_PROP_EOL_STYLE);

      if (((value == ((void*)0)) != (old_value == ((void*)0)))
          || (value && ! svn_string_compare(value, old_value)))
        {
          clear_recorded_info = TRUE;
        }
    }



  if (svn_hash_gets(prophash, name) == ((void*)0))
    {
      if (value == ((void*)0))

        notify_action = svn_wc_notify_property_deleted_nonexistent;
      else

        notify_action = svn_wc_notify_property_added;
    }
  else
    {
      if (value == ((void*)0))

        notify_action = svn_wc_notify_property_deleted;
      else

        notify_action = svn_wc_notify_property_modified;
    }



  svn_hash_sets(prophash, name, value);


  SVN_ERR(svn_wc__db_op_set_props(db, local_abspath, prophash,
                                  clear_recorded_info, ((void*)0), work_item,
                                  scratch_pool));


  if (work_item)
    SVN_ERR(svn_wc__wq_run(db, local_abspath, ((void*)0), ((void*)0), scratch_pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(local_abspath,
                                                     notify_action,
                                                     scratch_pool);
      notify->prop_name = name;
      notify->kind = kind;

      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
