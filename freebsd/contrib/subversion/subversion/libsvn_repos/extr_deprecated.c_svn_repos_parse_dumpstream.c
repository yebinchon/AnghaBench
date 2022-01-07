
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_parser_fns_t ;
typedef int svn_repos_parse_fns2_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int * fns2_from_fns (int const*,int *) ;
 int * svn_repos_parse_dumpstream2 (int *,int *,void*,int ,void*,int *) ;

svn_error_t *
svn_repos_parse_dumpstream(svn_stream_t *stream,
                           const svn_repos_parser_fns_t *parse_fns,
                           void *parse_baton,
                           svn_cancel_func_t cancel_func,
                           void *cancel_baton,
                           apr_pool_t *pool)
{
  svn_repos_parse_fns2_t *fns2 = fns2_from_fns(parse_fns, pool);

  return svn_repos_parse_dumpstream2(stream, fns2, parse_baton,
                                     cancel_func, cancel_baton, pool);
}
