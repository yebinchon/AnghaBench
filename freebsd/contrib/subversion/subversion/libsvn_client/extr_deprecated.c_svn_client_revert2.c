
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int svn_client_revert3 (int const*,int ,int const*,int ,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_revert2(const apr_array_header_t *paths,
                   svn_depth_t depth,
                   const apr_array_header_t *changelists,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_client_revert3(paths,
                                            depth,
                                            changelists,
                                            FALSE ,
                                            FALSE ,
                                            ctx,
                                            pool));
}
