
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_2__ {int requested_depth; } ;
typedef TYPE_1__ lock_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int SVN_XML_NAMESPACE ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_depth_to_word (int ) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,int ,char*,int ,int ) ;

__attribute__((used)) static svn_error_t *
create_getlocks_body(serf_bucket_t **body_bkt,
                     void *baton,
                     serf_bucket_alloc_t *alloc,
                     apr_pool_t *pool ,
                     apr_pool_t *scratch_pool)
{
  lock_context_t *lock_ctx = baton;
  serf_bucket_t *buckets;

  buckets = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_open_tag_buckets(
    buckets, alloc, "S:get-locks-report", "xmlns:S", SVN_XML_NAMESPACE,
    "depth", svn_depth_to_word(lock_ctx->requested_depth), SVN_VA_NULL);
  svn_ra_serf__add_close_tag_buckets(buckets, alloc, "S:get-locks-report");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}
