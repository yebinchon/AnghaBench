
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_commit_info_t ;
struct TYPE_4__ {struct downgrade_commit_copied_notify_baton* notify_baton2; int notify_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct downgrade_commit_copied_notify_baton {struct downgrade_commit_copied_notify_baton* orig_notify_baton2; int orig_notify_func2; } ;
struct capture_baton_t {int * pool; int ** info; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int capture_commit_info ;
 int downgrade_commit_copied_notify_func ;
 int * svn_client_commit5 (int const*,int ,int ,int ,int ,int const*,int const*,int ,struct capture_baton_t*,TYPE_1__*,int *) ;
 int * svn_create_commit_info (int *) ;

svn_error_t *
svn_client_commit4(svn_commit_info_t **commit_info_p,
                   const apr_array_header_t *targets,
                   svn_depth_t depth,
                   svn_boolean_t keep_locks,
                   svn_boolean_t keep_changelists,
                   const apr_array_header_t *changelists,
                   const apr_hash_t *revprop_table,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  struct capture_baton_t cb;
  struct downgrade_commit_copied_notify_baton notify_baton;
  svn_error_t *err;

  notify_baton.orig_notify_func2 = ctx->notify_func2;
  notify_baton.orig_notify_baton2 = ctx->notify_baton2;

  *commit_info_p = ((void*)0);
  cb.info = commit_info_p;
  cb.pool = pool;



  if (ctx->notify_func2)
    {
      ctx->notify_func2 = downgrade_commit_copied_notify_func;
      ctx->notify_baton2 = &notify_baton;
    }

  err = svn_client_commit5(targets, depth, keep_locks, keep_changelists, FALSE,
                           changelists, revprop_table,
                           capture_commit_info, &cb, ctx, pool);


  ctx->notify_func2 = notify_baton.orig_notify_func2;
  ctx->notify_baton2 = notify_baton.orig_notify_baton2;

  SVN_ERR(err);

  if (! *commit_info_p)
    *commit_info_p = svn_create_commit_info(pool);

  return SVN_NO_ERROR;
}
