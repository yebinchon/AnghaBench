
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int serf_bucket_headers_setn (int *,char*,char*) ;

__attribute__((used)) static svn_error_t*
setup_getlock_headers(serf_bucket_t *headers,
                      void *baton,
                      apr_pool_t *pool ,
                      apr_pool_t *scratch_pool)
{
  serf_bucket_headers_setn(headers, "Depth", "0");

  return SVN_NO_ERROR;
}
