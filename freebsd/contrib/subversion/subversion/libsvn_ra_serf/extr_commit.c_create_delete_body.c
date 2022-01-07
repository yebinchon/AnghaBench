
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int relpath; TYPE_1__* commit_ctx; } ;
typedef TYPE_2__ delete_context_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int lock_tokens; } ;


 int * SVN_NO_ERROR ;
 int * serf_bucket_aggregate_create (int *) ;
 int svn_ra_serf__add_xml_header_buckets (int *,int *) ;
 int svn_ra_serf__merge_lock_token_list (int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_delete_body(serf_bucket_t **body_bkt,
                   void *baton,
                   serf_bucket_alloc_t *alloc,
                   apr_pool_t *pool ,
                   apr_pool_t *scratch_pool)
{
  delete_context_t *ctx = baton;
  serf_bucket_t *body;

  body = serf_bucket_aggregate_create(alloc);

  svn_ra_serf__add_xml_header_buckets(body, alloc);

  svn_ra_serf__merge_lock_token_list(ctx->commit_ctx->lock_tokens,
                                     ctx->relpath, body, alloc, pool);

  *body_bkt = body;
  return SVN_NO_ERROR;
}
