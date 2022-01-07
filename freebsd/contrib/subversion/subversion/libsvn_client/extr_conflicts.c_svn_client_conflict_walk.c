
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_status3_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_3__ {struct conflict_status_walker_baton* notify_baton2; int (* notify_func2 ) (struct conflict_status_walker_baton*,int ,int *) ;int wc_ctx; int cancel_baton; int * (* cancel_func ) (int ) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_client_conflict_walk_func_t ;
struct conflict_status_walker_baton {struct conflict_status_walker_baton* notify_baton; int (* notify_func ) (struct conflict_status_walker_baton*,int ,int *) ;int * unresolved_tree_conflicts; void* resolved_a_tree_conflict; TYPE_1__* ctx; void* conflict_walk_func_baton; int conflict_walk_func; } ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 void* FALSE ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 void* apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * conflict_status_walker (struct conflict_status_walker_baton*,char const*,int *,int *) ;
 int stub1 (struct conflict_status_walker_baton*,int ,int *) ;
 int * stub2 (int ) ;
 int stub3 (struct conflict_status_walker_baton*,int ,int *) ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_conflict_resolver_done ;
 int svn_wc_notify_conflict_resolver_starting ;
 int * svn_wc_status3 (int **,int ,char const*,int *,int *) ;
 int * svn_wc_walk_status (int ,char const*,scalar_t__,void*,void*,int ,int *,int * (*) (struct conflict_status_walker_baton*,char const*,int *,int *),struct conflict_status_walker_baton*,int * (*) (int ),int ,int *) ;
 int tree_conflict_collector (struct conflict_status_walker_baton*,int ,int *) ;

svn_error_t *
svn_client_conflict_walk(const char *local_abspath,
                         svn_depth_t depth,
                         svn_client_conflict_walk_func_t conflict_walk_func,
                         void *conflict_walk_func_baton,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  struct conflict_status_walker_baton cswb;
  apr_pool_t *iterpool = ((void*)0);
  svn_error_t *err = SVN_NO_ERROR;

  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  cswb.conflict_walk_func = conflict_walk_func;
  cswb.conflict_walk_func_baton = conflict_walk_func_baton;
  cswb.ctx = ctx;
  cswb.resolved_a_tree_conflict = FALSE;
  cswb.unresolved_tree_conflicts = apr_hash_make(scratch_pool);

  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      svn_wc_create_notify(
                        local_abspath,
                        svn_wc_notify_conflict_resolver_starting,
                        scratch_pool),
                      scratch_pool);


  cswb.notify_func = ctx->notify_func2;
  cswb.notify_baton = ctx->notify_baton2;
  ctx->notify_func2 = tree_conflict_collector;
  ctx->notify_baton2 = &cswb;

  err = svn_wc_walk_status(ctx->wc_ctx,
                           local_abspath,
                           depth,
                           FALSE ,
                           FALSE ,
                           TRUE ,
                           ((void*)0) ,
                           conflict_status_walker, &cswb,
                           ctx->cancel_func, ctx->cancel_baton,
                           scratch_pool);



  while (!err && cswb.unresolved_tree_conflicts &&
         apr_hash_count(cswb.unresolved_tree_conflicts))
    {
      apr_hash_index_t *hi;
      svn_wc_status3_t *status = ((void*)0);
      const char *tc_abspath = ((void*)0);

      if (iterpool)
        svn_pool_clear(iterpool);
      else
        iterpool = svn_pool_create(scratch_pool);

      hi = apr_hash_first(scratch_pool, cswb.unresolved_tree_conflicts);
      cswb.unresolved_tree_conflicts = apr_hash_make(scratch_pool);
      cswb.resolved_a_tree_conflict = FALSE;

      for (; hi && !err; hi = apr_hash_next(hi))
        {
          svn_pool_clear(iterpool);

          tc_abspath = apr_hash_this_key(hi);

          if (ctx->cancel_func)
            {
              err = ctx->cancel_func(ctx->cancel_baton);
              if (err)
                break;
            }

          err = svn_error_trace(svn_wc_status3(&status, ctx->wc_ctx,
                                               tc_abspath,
                                               iterpool, iterpool));
          if (err)
            break;

          err = svn_error_trace(conflict_status_walker(&cswb, tc_abspath,
                                                       status, scratch_pool));
          if (err)
            break;
        }

      if (!err && !cswb.resolved_a_tree_conflict && tc_abspath &&
          apr_hash_count(cswb.unresolved_tree_conflicts))
        {


          cswb.unresolved_tree_conflicts = ((void*)0);




          err = svn_error_trace(conflict_status_walker(&cswb, tc_abspath,
                                                       status, scratch_pool));
          SVN_ERR_ASSERT(err != ((void*)0));

          err = svn_error_createf(
                    SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                    _("Unable to resolve pending conflict on '%s'"),
                    svn_dirent_local_style(tc_abspath, scratch_pool));
          break;
        }
    }

  if (iterpool)
    svn_pool_destroy(iterpool);

  ctx->notify_func2 = cswb.notify_func;
  ctx->notify_baton2 = cswb.notify_baton;

  if (!err && ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      svn_wc_create_notify(local_abspath,
                                          svn_wc_notify_conflict_resolver_done,
                                          scratch_pool),
                      scratch_pool);

  return svn_error_trace(err);
}
