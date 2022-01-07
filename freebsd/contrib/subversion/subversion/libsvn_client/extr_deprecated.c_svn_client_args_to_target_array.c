
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_client_args_to_target_array2 (int **,int *,int const*,int *,int ,int *) ;

svn_error_t *
svn_client_args_to_target_array(apr_array_header_t **targets_p,
                                apr_getopt_t *os,
                                const apr_array_header_t *known_targets,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *pool)
{
  return svn_client_args_to_target_array2(targets_p, os, known_targets, ctx,
                                          FALSE, pool);
}
