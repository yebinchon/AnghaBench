
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_reason_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_15__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_16__ {int local_abspath; } ;
typedef TYPE_3__ svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 char* _ (char*) ;
 char* apr_psprintf (int *,char*,int ) ;
 int svn_client_conflict_get_local_change (TYPE_3__*) ;
 int svn_client_conflict_get_operation (TYPE_3__*) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_wc__get_wcroot (char const**,int ,int ,int *,int *) ;
 TYPE_1__* svn_wc__node_was_moved_away (char const**,int *,int ,int ,int *,int *) ;
 int svn_wc__node_was_moved_here (char const**,int *,int ,int ,int *,int *) ;
 int svn_wc_operation_merge ;
 int svn_wc_operation_switch ;
 int svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
describe_local_file_node_change(const char **description,
                                svn_client_conflict_t *conflict,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t local_change;
  svn_wc_operation_t operation;

  local_change = svn_client_conflict_get_local_change(conflict);
  operation = svn_client_conflict_get_operation(conflict);

  switch (local_change)
    {
      case 134:
        if (operation == svn_wc_operation_update ||
            operation == svn_wc_operation_switch)
          *description = _("A file containing uncommitted changes was "
                           "found in the working copy.");
        else if (operation == svn_wc_operation_merge)
          *description = _("A file which differs from the corresponding "
                           "file on the merge source branch was found "
                           "in the working copy.");
        break;
      case 130:
        *description = _("A file which already occupies this path was found "
                         "in the working copy.");
        break;
      case 128:
        *description = _("An unversioned file was found in the working "
                         "copy.");
        break;
      case 135:
        *description = _("A deleted file was found in the working copy.");
        break;
      case 133:
        if (operation == svn_wc_operation_update ||
            operation == svn_wc_operation_switch)
          *description = _("No such file was found in the working copy.");
        else if (operation == svn_wc_operation_merge)
          {

            *description = _("No such file was found in the merge target "
                             "working copy.\nPerhaps the file has been "
                             "deleted or moved away in the repository's "
                             "history?");
          }
        break;
      case 136:
      case 129:
        {

          *description = _("A file scheduled to be added to the "
                           "repository in the next commit was found in "
                           "the working copy.");
        }
        break;
      case 132:
        {
          const char *moved_to_abspath;
          svn_error_t *err;

          err = svn_wc__node_was_moved_away(&moved_to_abspath, ((void*)0),
                                            ctx->wc_ctx,
                                            conflict->local_abspath,
                                            scratch_pool,
                                            scratch_pool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
                {
                  moved_to_abspath = ((void*)0);
                  svn_error_clear(err);
                }
              else
                return svn_error_trace(err);
            }
          if (operation == svn_wc_operation_update ||
              operation == svn_wc_operation_switch)
            {
              if (moved_to_abspath == ((void*)0))
                {

                  *description = _("The file in the working copy had "
                                   "been moved away at the time this "
                                   "conflict was recorded.");
                }
              else
                {
                  const char *wcroot_abspath;

                  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = apr_psprintf(
                                   result_pool,
                                   _("The file in the working copy was "
                                     "moved away to\n'%s'."),
                                   svn_dirent_local_style(
                                     svn_dirent_skip_ancestor(
                                       wcroot_abspath,
                                       moved_to_abspath),
                                     scratch_pool));
                }
            }
          else if (operation == svn_wc_operation_merge)
            {
              if (moved_to_abspath == ((void*)0))
                {




                  *description = _("The file in the working copy had "
                                   "been moved away at the time this "
                                   "conflict was recorded.");
                }
              else
                {

                  const char *wcroot_abspath;

                  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = apr_psprintf(
                                   result_pool,
                                   _("The file in the working copy was "
                                     "moved away to\n'%s'."),
                                   svn_dirent_local_style(
                                     svn_dirent_skip_ancestor(
                                       wcroot_abspath,
                                       moved_to_abspath),
                                     scratch_pool));
                }
            }
          break;
        }
      case 131:
        {
          const char *moved_from_abspath;

          SVN_ERR(svn_wc__node_was_moved_here(&moved_from_abspath, ((void*)0),
                                              ctx->wc_ctx,
                                              conflict->local_abspath,
                                              scratch_pool,
                                              scratch_pool));
          if (operation == svn_wc_operation_update ||
              operation == svn_wc_operation_switch)
            {
              if (moved_from_abspath == ((void*)0))
                {

                  *description = _("A file had been moved here in the "
                                   "working copy at the time this "
                                   "conflict was recorded.");
                }
              else
                {
                  const char *wcroot_abspath;

                  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = apr_psprintf(
                                   result_pool,
                                   _("A file was moved here in the "
                                     "working copy from\n'%s'."),
                                   svn_dirent_local_style(
                                     svn_dirent_skip_ancestor(
                                       wcroot_abspath,
                                       moved_from_abspath),
                                     scratch_pool));
                }
            }
          else if (operation == svn_wc_operation_merge)
            {
              if (moved_from_abspath == ((void*)0))
                {




                  *description = _("A file had been moved here in the "
                                   "working copy at the time this "
                                   "conflict was recorded.");
                }
              else
                {
                  const char *wcroot_abspath;

                  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));

                  *description = apr_psprintf(
                                   result_pool,
                                   _("A file was moved here in the "
                                     "working copy from\n'%s'."),
                                   svn_dirent_local_style(
                                     svn_dirent_skip_ancestor(
                                       wcroot_abspath,
                                       moved_from_abspath),
                                     scratch_pool));
                }
            }
          break;
        }
    }

  return SVN_NO_ERROR;
}
