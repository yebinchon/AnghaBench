
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_19__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_20__ {int * url; int rev; int repos_uuid; int repos_root_url; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct TYPE_21__ {TYPE_3__ loc; int abspath; } ;
typedef TYPE_4__ merge_target_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 int SVN_INVALID_REVNUM ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_4__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int ensure_wc_is_suitable_merge_target (char const*,TYPE_2__*,int ,int ,int ,int *) ;
 int svn_client__wc_node_get_origin (TYPE_3__**,char const*,TYPE_2__*,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 TYPE_1__* svn_error_createf (int ,TYPE_1__*,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_wc__node_get_repos_info (int *,int *,int *,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_target_wc(merge_target_t **target_p,
               const char *wc_abspath,
               svn_boolean_t allow_mixed_rev,
               svn_boolean_t allow_local_mods,
               svn_boolean_t allow_switched_subtrees,
               svn_client_ctx_t *ctx,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  merge_target_t *target = apr_palloc(result_pool, sizeof(*target));
  svn_client__pathrev_t *origin;

  target->abspath = apr_pstrdup(result_pool, wc_abspath);

  SVN_ERR(svn_client__wc_node_get_origin(&origin, wc_abspath, ctx,
                                         result_pool, scratch_pool));
  if (origin)
    {
      target->loc = *origin;
    }
  else
    {
      svn_error_t *err;






      err = svn_wc__node_get_repos_info(((void*)0), ((void*)0),
                                        &target->loc.repos_root_url,
                                        &target->loc.repos_uuid,
                                        ctx->wc_ctx, wc_abspath,
                                        result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
              && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY
              && err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
            return svn_error_trace(err);

          return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, err,
                                   _("Merge target '%s' does not exist in the "
                                     "working copy"),
                                   svn_dirent_local_style(wc_abspath,
                                                          scratch_pool));
        }

      target->loc.rev = SVN_INVALID_REVNUM;
      target->loc.url = ((void*)0);
    }

  SVN_ERR(ensure_wc_is_suitable_merge_target(
            wc_abspath, ctx,
            allow_mixed_rev, allow_local_mods, allow_switched_subtrees,
            scratch_pool));

  *target_p = target;
  return SVN_NO_ERROR;
}
