
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,int *,int *) ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int crop_children (int ,char const*,int ,int ,int (*) (void*,int *,int *),void*,int ,void*,int *) ;
 int svn_depth_empty ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__db_base_remove (int ,char const*,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_wc__db_is_switched (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;
 int svn_wc__db_read_info (int*,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;







 int svn_wc__node_has_local_mods (scalar_t__*,scalar_t__*,int ,char const*,int ,int ,void*,int *) ;
 int svn_wc__wq_run (int ,char const*,int ,void*,int *) ;
 int * svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_exclude ;

svn_error_t *
svn_wc_exclude(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  svn_boolean_t is_root, is_switched;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_revnum_t revision;
  svn_depth_t depth;
  svn_boolean_t modified, all_deletes;
  const char *repos_relpath, *repos_root, *repos_uuid;

  SVN_ERR(svn_wc__db_is_switched(&is_root, &is_switched, ((void*)0),
                                 wc_ctx->db, local_abspath, scratch_pool));

  if (is_root)
    {
       return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                _("Cannot exclude '%s': "
                                  "it is a working copy root"),
                                svn_dirent_local_style(local_abspath,
                                                       scratch_pool));
    }
  if (is_switched)
    {
      return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                               _("Cannot exclude '%s': "
                                 "it is a switched path"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }

  SVN_ERR(svn_wc__db_read_info(&status, &kind, &revision, &repos_relpath,
                               &repos_root, &repos_uuid, ((void*)0), ((void*)0), ((void*)0),
                               &depth, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0),
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  switch (status)
    {
      case 128:
      case 132:
      case 129:
        return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                 _("The node '%s' was not found."),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));

      case 134:

        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("Cannot exclude '%s': it is to be added "
                                   "to the repository. Try commit instead"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
      case 133:

        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("Cannot exclude '%s': it is to be deleted "
                                   "from the repository. Try commit instead"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));

      case 130:
      case 131:
      default:
        break;
    }

  SVN_ERR(svn_wc__node_has_local_mods(&modified, &all_deletes,
                                      wc_ctx->db, local_abspath, FALSE,
                                      cancel_func, cancel_baton,
                                      scratch_pool));

  if (!modified || all_deletes)
    {

      SVN_ERR(svn_wc__db_base_remove(wc_ctx->db, local_abspath,
                                     FALSE ,
                                     FALSE, TRUE,
                                     revision,
                                     ((void*)0), ((void*)0),
                                     scratch_pool));

      SVN_ERR(svn_wc__wq_run(wc_ctx->db, local_abspath,
                             cancel_func, cancel_baton,
                             scratch_pool));

      if (notify_func)
        {
          svn_wc_notify_t *notify;
          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_exclude,
                                        scratch_pool);
          notify_func(notify_baton, notify, scratch_pool);
        }
    }
  else
    {

      SVN_ERR(crop_children(wc_ctx->db, local_abspath, depth, svn_depth_empty,
                            notify_func, notify_baton,
                            cancel_func, cancel_baton,
                            scratch_pool));
    }

  return SVN_NO_ERROR;
}
