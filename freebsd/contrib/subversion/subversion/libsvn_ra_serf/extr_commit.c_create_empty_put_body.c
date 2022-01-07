
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int * SERF_BUCKET_SIMPLE_STRING (char*,int *) ;
 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
create_empty_put_body(serf_bucket_t **body_bkt,
                      void *baton,
                      serf_bucket_alloc_t *alloc,
                      apr_pool_t *pool ,
                      apr_pool_t *scratch_pool)
{
  *body_bkt = SERF_BUCKET_SIMPLE_STRING("", alloc);
  return SVN_NO_ERROR;
}
