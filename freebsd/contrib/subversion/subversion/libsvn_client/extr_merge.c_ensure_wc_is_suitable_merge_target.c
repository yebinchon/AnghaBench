
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED ;
 int SVN_ERR_CLIENT_NOT_READY_TO_MERGE ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_client_min_max_revisions (int *,int *,char const*,int ,TYPE_1__*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_wc__has_local_mods (scalar_t__*,int ,char const*,int ,int ,int ,int *) ;
 int svn_wc__has_switched_subtrees (scalar_t__*,int ,char const*,int *,int *) ;
 int svn_wc__node_is_added (scalar_t__*,int ,char const*,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ensure_wc_is_suitable_merge_target(const char *target_abspath,
                                   svn_client_ctx_t *ctx,
                                   svn_boolean_t allow_mixed_rev,
                                   svn_boolean_t allow_local_mods,
                                   svn_boolean_t allow_switched_subtrees,
                                   apr_pool_t *scratch_pool)
{
  svn_node_kind_t target_kind;


  SVN_ERR(svn_io_check_path(target_abspath, &target_kind, scratch_pool));
  if (target_kind == svn_node_none)
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                             _("Path '%s' does not exist"),
                             svn_dirent_local_style(target_abspath,
                                                    scratch_pool));
  SVN_ERR(svn_wc_read_kind2(&target_kind, ctx->wc_ctx, target_abspath,
                            FALSE, FALSE, scratch_pool));
  if (target_kind != svn_node_dir && target_kind != svn_node_file)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("Merge target '%s' does not exist in the "
                               "working copy"), target_abspath);


  if (! allow_mixed_rev)
    {
      svn_revnum_t min_rev;
      svn_revnum_t max_rev;

      SVN_ERR(svn_client_min_max_revisions(&min_rev, &max_rev, target_abspath,
                                           FALSE, ctx, scratch_pool));

      if (!(SVN_IS_VALID_REVNUM(min_rev) && SVN_IS_VALID_REVNUM(max_rev)))
        {
          svn_boolean_t is_added;


          SVN_ERR(svn_wc__node_is_added(&is_added, ctx->wc_ctx, target_abspath,
                                        scratch_pool));
          if (is_added)
            return SVN_NO_ERROR;
          else
            return svn_error_create(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                                    _("Cannot determine revision of working "
                                      "copy"));
        }

      if (min_rev != max_rev)
        return svn_error_createf(SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED, ((void*)0),
                                 _("Cannot merge into mixed-revision working "
                                   "copy [%ld:%ld]; try updating first"),
                                   min_rev, max_rev);
    }


  if (! allow_switched_subtrees)
    {
      svn_boolean_t is_switched;

      SVN_ERR(svn_wc__has_switched_subtrees(&is_switched, ctx->wc_ctx,
                                            target_abspath, ((void*)0),
                                            scratch_pool));
      if (is_switched)
        return svn_error_create(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                                _("Cannot merge into a working copy "
                                  "with a switched subtree"));
    }


  if (! allow_local_mods)
    {
      svn_boolean_t is_modified;

      SVN_ERR(svn_wc__has_local_mods(&is_modified, ctx->wc_ctx,
                                     target_abspath, TRUE,
                                     ctx->cancel_func,
                                     ctx->cancel_baton,
                                     scratch_pool));
      if (is_modified)
        return svn_error_create(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                                _("Cannot merge into a working copy "
                                  "that has local modifications"));
    }

  return SVN_NO_ERROR;
}
