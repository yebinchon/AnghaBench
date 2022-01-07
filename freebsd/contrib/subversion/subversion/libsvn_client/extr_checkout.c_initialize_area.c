
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_5__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_6__ {int rev; int repos_uuid; int repos_root_url; int url; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int svn_wc_ensure_adm4 (int ,char const*,int ,int ,int ,int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
initialize_area(const char *local_abspath,
                const svn_client__pathrev_t *pathrev,
                svn_depth_t depth,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;


  SVN_ERR(svn_wc_ensure_adm4(ctx->wc_ctx, local_abspath, pathrev->url,
                             pathrev->repos_root_url, pathrev->repos_uuid,
                             pathrev->rev, depth, pool));
  return SVN_NO_ERROR;
}
