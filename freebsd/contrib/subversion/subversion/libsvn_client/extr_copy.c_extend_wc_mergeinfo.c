
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int svn_client__parse_mergeinfo (int **,int ,char const*,int *,int *) ;
 int svn_client__record_wc_mergeinfo (char const*,int *,int ,TYPE_1__*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_mergeinfo_merge2 (int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
extend_wc_mergeinfo(const char *target_abspath,
                    apr_hash_t *mergeinfo,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  apr_hash_t *wc_mergeinfo;



  SVN_ERR(svn_client__parse_mergeinfo(&wc_mergeinfo, ctx->wc_ctx,
                                      target_abspath, pool, pool));


  if (wc_mergeinfo && mergeinfo)
    SVN_ERR(svn_mergeinfo_merge2(wc_mergeinfo, mergeinfo, pool, pool));
  else if (! wc_mergeinfo)
    wc_mergeinfo = mergeinfo;

  return svn_error_trace(
    svn_client__record_wc_mergeinfo(target_abspath, wc_mergeinfo,
                                    FALSE, ctx, pool));
}
