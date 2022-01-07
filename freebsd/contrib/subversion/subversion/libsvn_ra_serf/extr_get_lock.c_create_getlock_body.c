
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_empty_tag_buckets (int *,int *,char*,int ) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,...) ;
 int svn_ra_serf__add_xml_header_buckets (int *,int *) ;

__attribute__((used)) static svn_error_t *
create_getlock_body(serf_bucket_t **body_bkt,
                    void *baton,
                    serf_bucket_alloc_t *alloc,
                    apr_pool_t *pool ,
                    apr_pool_t *scratch_pool)
{
  serf_bucket_t *buckets;

  buckets = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_xml_header_buckets(buckets, alloc);
  svn_ra_serf__add_open_tag_buckets(buckets, alloc, "propfind",
                                    "xmlns", "DAV:",
                                    SVN_VA_NULL);
  svn_ra_serf__add_open_tag_buckets(buckets, alloc, "prop", SVN_VA_NULL);
  svn_ra_serf__add_empty_tag_buckets(buckets, alloc,
                                     "lockdiscovery", SVN_VA_NULL);
  svn_ra_serf__add_close_tag_buckets(buckets, alloc, "prop");
  svn_ra_serf__add_close_tag_buckets(buckets, alloc, "propfind");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}
