#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_3__ {struct conflict_status_walker_baton* notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (struct conflict_status_walker_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_walk_func_t ;
struct conflict_status_walker_baton {struct conflict_status_walker_baton* notify_baton; int /*<<< orphan*/  (* notify_func ) (struct conflict_status_walker_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * unresolved_tree_conflicts; void* resolved_a_tree_conflict; TYPE_1__* ctx; void* conflict_walk_func_baton; int /*<<< orphan*/  conflict_walk_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct conflict_status_walker_baton*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct conflict_status_walker_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct conflict_status_walker_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_conflict_resolver_done ; 
 int /*<<< orphan*/  svn_wc_notify_conflict_resolver_starting ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,char const*,scalar_t__,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (struct conflict_status_walker_baton*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),struct conflict_status_walker_baton*,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct conflict_status_walker_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(const char *local_abspath,
                         svn_depth_t depth,
                         svn_client_conflict_walk_func_t conflict_walk_func,
                         void *conflict_walk_func_baton,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  struct conflict_status_walker_baton cswb;
  apr_pool_t *iterpool = NULL;
  svn_error_t *err = SVN_NO_ERROR;

  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  cswb.conflict_walk_func = conflict_walk_func;
  cswb.conflict_walk_func_baton = conflict_walk_func_baton;
  cswb.ctx = ctx;
  cswb.resolved_a_tree_conflict = FALSE;
  cswb.unresolved_tree_conflicts = FUNC4(scratch_pool);

  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC17(
                        local_abspath,
                        svn_wc_notify_conflict_resolver_starting,
                        scratch_pool),
                      scratch_pool);

  /* Swap in our notify_func wrapper. We must revert this before returning! */
  cswb.notify_func = ctx->notify_func2;
  cswb.notify_baton = ctx->notify_baton2;
  ctx->notify_func2 = tree_conflict_collector;
  ctx->notify_baton2 = &cswb;

  err = FUNC19(ctx->wc_ctx,
                           local_abspath,
                           depth,
                           FALSE /* get_all */,
                           FALSE /* no_ignore */,
                           TRUE /* ignore_text_mods */,
                           NULL /* ignore_patterns */,
                           conflict_status_walker, &cswb,
                           ctx->cancel_func, ctx->cancel_baton,
                           scratch_pool);

  /* If we got new tree conflicts (or delayed conflicts) during the initial
     walk, we now walk them one by one as closure. */
  while (!err && cswb.unresolved_tree_conflicts &&
         FUNC2(cswb.unresolved_tree_conflicts))
    {
      apr_hash_index_t *hi;
      svn_wc_status3_t *status = NULL;
      const char *tc_abspath = NULL;

      if (iterpool)
        FUNC14(iterpool);
      else
        iterpool = FUNC15(scratch_pool);

      hi = FUNC3(scratch_pool, cswb.unresolved_tree_conflicts);
      cswb.unresolved_tree_conflicts = FUNC4(scratch_pool);
      cswb.resolved_a_tree_conflict = FALSE;

      for (; hi && !err; hi = FUNC5(hi))
        {
          FUNC14(iterpool);

          tc_abspath = FUNC6(hi);

          if (ctx->cancel_func)
            {
              err = ctx->cancel_func(ctx->cancel_baton);
              if (err)
                break;
            }

          err = FUNC13(FUNC18(&status, ctx->wc_ctx,
                                               tc_abspath,
                                               iterpool, iterpool));
          if (err)
            break;

          err = FUNC13(FUNC7(&cswb, tc_abspath,
                                                       status, scratch_pool));
          if (err)
            break;
        }
  
      if (!err && !cswb.resolved_a_tree_conflict && tc_abspath &&
          FUNC2(cswb.unresolved_tree_conflicts))
        {
          /* None of the remaining conflicts got resolved, without any error.
           * Disable the 'unresolved_tree_conflicts' cache and try again. */
          cswb.unresolved_tree_conflicts = NULL;

          /* Run the most recent resolve operation again.
           * We still have status and tc_abspath for that one.
           * This should uncover the error which prevents resolution. */
          err = FUNC13(FUNC7(&cswb, tc_abspath,
                                                       status, scratch_pool));
          FUNC0(err != NULL);

          err = FUNC12(
                    SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                    FUNC1("Unable to resolve pending conflict on '%s'"),
                    FUNC11(tc_abspath, scratch_pool));
          break;
        }
    }

  if (iterpool)
    FUNC16(iterpool);

  ctx->notify_func2 = cswb.notify_func;
  ctx->notify_baton2 = cswb.notify_baton;

  if (!err && ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC17(local_abspath,
                                          svn_wc_notify_conflict_resolver_done,
                                          scratch_pool),
                      scratch_pool);

  return FUNC13(err);
}