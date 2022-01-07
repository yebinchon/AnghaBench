
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_stream_open_readonly (int **,char const* const,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_delta_base(svn_stream_t **stream, void *baton,
                apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  const char *const delta_base = baton;
  return svn_stream_open_readonly(stream, delta_base,
                                  result_pool, scratch_pool);
}
