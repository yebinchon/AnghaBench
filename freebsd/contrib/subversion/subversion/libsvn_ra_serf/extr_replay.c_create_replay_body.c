
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct revision_report_t {int send_deltas; int low_water_mark; int revision; scalar_t__ include_path; } ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int SVN_XML_NAMESPACE ;
 scalar_t__ apr_ltoa (int *,int ) ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,int ,int ) ;
 int svn_ra_serf__add_tag_buckets (int *,char*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
create_replay_body(serf_bucket_t **bkt,
                   void *baton,
                   serf_bucket_alloc_t *alloc,
                   apr_pool_t *pool ,
                   apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;
  serf_bucket_t *body_bkt;

  body_bkt = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_open_tag_buckets(body_bkt, alloc,
                                    "S:replay-report",
                                    "xmlns:S", SVN_XML_NAMESPACE,
                                    SVN_VA_NULL);



  if (ctx->include_path)
    {
      svn_ra_serf__add_tag_buckets(body_bkt,
                                   "S:include-path",
                                   ctx->include_path,
                                   alloc);
    }
  else
    {
      svn_ra_serf__add_tag_buckets(body_bkt,
                                   "S:revision",
                                   apr_ltoa(pool, ctx->revision),
                                   alloc);
    }
  svn_ra_serf__add_tag_buckets(body_bkt,
                               "S:low-water-mark",
                               apr_ltoa(pool, ctx->low_water_mark),
                               alloc);

  svn_ra_serf__add_tag_buckets(body_bkt,
                               "S:send-deltas",
                               apr_ltoa(pool, ctx->send_deltas),
                               alloc);

  svn_ra_serf__add_close_tag_buckets(body_bkt, alloc, "S:replay-report");

  *bkt = body_bkt;
  return SVN_NO_ERROR;
}
