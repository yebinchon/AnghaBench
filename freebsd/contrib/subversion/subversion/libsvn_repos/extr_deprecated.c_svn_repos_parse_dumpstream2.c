
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_parser_fns2_t ;
typedef int svn_repos_parse_fns3_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * fns3_from_fns2 (int const*,int *) ;
 int * svn_repos_parse_dumpstream3 (int *,int *,void*,int ,int ,void*,int *) ;

svn_error_t *
svn_repos_parse_dumpstream2(svn_stream_t *stream,
                            const svn_repos_parser_fns2_t *parse_fns,
                            void *parse_baton,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *pool)
{
  svn_repos_parse_fns3_t *fns3 = fns3_from_fns2(parse_fns, pool);

  return svn_repos_parse_dumpstream3(stream, fns3, parse_baton, FALSE,
                                     cancel_func, cancel_baton, pool);
}
