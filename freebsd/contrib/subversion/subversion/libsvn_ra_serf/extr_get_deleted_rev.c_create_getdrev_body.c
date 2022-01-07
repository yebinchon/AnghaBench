
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_2__ {int end_revision; int peg_revision; int path; } ;
typedef TYPE_1__ drev_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int SVN_XML_NAMESPACE ;
 int apr_ltoa (int *,int ) ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,int ,char*,char*,int ) ;
 int svn_ra_serf__add_tag_buckets (int *,char*,int ,int *) ;

__attribute__((used)) static svn_error_t *
create_getdrev_body(serf_bucket_t **body_bkt,
                    void *baton,
                    serf_bucket_alloc_t *alloc,
                    apr_pool_t *pool ,
                    apr_pool_t *scratch_pool)
{
  serf_bucket_t *buckets;
  drev_context_t *drev_ctx = baton;

  buckets = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_open_tag_buckets(buckets, alloc,
                                    "S:get-deleted-rev-report",
                                    "xmlns:S", SVN_XML_NAMESPACE,
                                    "xmlns:D", "DAV:",
                                    SVN_VA_NULL);

  svn_ra_serf__add_tag_buckets(buckets,
                               "S:path", drev_ctx->path,
                               alloc);

  svn_ra_serf__add_tag_buckets(buckets,
                               "S:peg-revision",
                               apr_ltoa(pool, drev_ctx->peg_revision),
                               alloc);

  svn_ra_serf__add_tag_buckets(buckets,
                               "S:end-revision",
                               apr_ltoa(pool, drev_ctx->end_revision),
                               alloc);

  svn_ra_serf__add_close_tag_buckets(buckets, alloc,
                                     "S:get-deleted-rev-report");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}
