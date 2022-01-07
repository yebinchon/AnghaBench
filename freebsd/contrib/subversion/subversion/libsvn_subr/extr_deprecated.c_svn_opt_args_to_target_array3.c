
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_opt__args_to_target_array (int **,int *,int const*,int *) ;

svn_error_t *
svn_opt_args_to_target_array3(apr_array_header_t **targets_p,
                              apr_getopt_t *os,
                              const apr_array_header_t *known_targets,
                              apr_pool_t *pool)
{
  return svn_error_trace(svn_opt__args_to_target_array(targets_p, os,
                                                       known_targets, pool));
}
