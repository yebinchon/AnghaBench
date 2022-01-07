
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int * serf_bucket_aggregate_create (int *) ;
 int strlen (char const*) ;
 int svn_ra_serf__add_cdata_len_buckets (int *,int *,char const*,int ) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_empty_tag_buckets (int *,int *,char*,int ) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,...) ;
 int svn_ra_serf__add_xml_header_buckets (int *,int *) ;

__attribute__((used)) static svn_error_t *
create_checkout_body(serf_bucket_t **bkt,
                     void *baton,
                     serf_bucket_alloc_t *alloc,
                     apr_pool_t *pool ,
                     apr_pool_t *scratch_pool)
{
  const char *activity_url = baton;
  serf_bucket_t *body_bkt;

  body_bkt = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_xml_header_buckets(body_bkt, alloc);
  svn_ra_serf__add_open_tag_buckets(body_bkt, alloc, "D:checkout",
                                    "xmlns:D", "DAV:",
                                    SVN_VA_NULL);
  svn_ra_serf__add_open_tag_buckets(body_bkt, alloc, "D:activity-set",
                                    SVN_VA_NULL);
  svn_ra_serf__add_open_tag_buckets(body_bkt, alloc, "D:href",
                                    SVN_VA_NULL);

  SVN_ERR_ASSERT(activity_url != ((void*)0));
  svn_ra_serf__add_cdata_len_buckets(body_bkt, alloc,
                                     activity_url,
                                     strlen(activity_url));

  svn_ra_serf__add_close_tag_buckets(body_bkt, alloc, "D:href");
  svn_ra_serf__add_close_tag_buckets(body_bkt, alloc, "D:activity-set");
  svn_ra_serf__add_empty_tag_buckets(body_bkt, alloc,
                                     "D:apply-to-version", SVN_VA_NULL);
  svn_ra_serf__add_close_tag_buckets(body_bkt, alloc, "D:checkout");

  *bkt = body_bkt;
  return SVN_NO_ERROR;
}
