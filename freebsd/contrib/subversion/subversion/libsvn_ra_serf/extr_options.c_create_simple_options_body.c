
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
 int serf_bucket_aggregate_append (int *,int *) ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_ra_serf__add_xml_header_buckets (int *,int *) ;

__attribute__((used)) static svn_error_t *
create_simple_options_body(serf_bucket_t **body_bkt,
                           void *baton,
                           serf_bucket_alloc_t *alloc,
                           apr_pool_t *pool ,
                           apr_pool_t *scratch_pool)
{
  serf_bucket_t *body;
  serf_bucket_t *s;

  body = serf_bucket_aggregate_create(alloc);
  svn_ra_serf__add_xml_header_buckets(body, alloc);

  s = SERF_BUCKET_SIMPLE_STRING("<D:options xmlns:D=\"DAV:\" />", alloc);
  serf_bucket_aggregate_append(body, s);

  *body_bkt = body;
  return SVN_NO_ERROR;
}
