#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
struct TYPE_22__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_resolver_func2_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_choice_t ;
struct TYPE_23__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  TYPE_3__* (* svn_cancel_func_t ) (void*) ;
typedef  void* svn_boolean_t ;
struct conflict_status_walker_baton {char const* resolve_prop; int /*<<< orphan*/ * resolve_later; void* resolved_one; void* notify_baton; int /*<<< orphan*/  (* notify_func ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;void* cancel_baton; TYPE_3__* (* cancel_func ) (void*) ;void* conflict_baton; int /*<<< orphan*/  conflict_func; int /*<<< orphan*/  conflict_choice; void* resolve_tree; void* resolve_text; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct conflict_status_walker_baton*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,char const*) ; 
 TYPE_3__* FUNC12 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_conflict_resolver_done ; 
 int /*<<< orphan*/  svn_wc_notify_conflict_resolver_starting ; 
 TYPE_3__* FUNC18 (TYPE_1__**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC19 (TYPE_2__*,char const*,scalar_t__,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct conflict_status_walker_baton*,char const*,TYPE_1__*,int /*<<< orphan*/ *),struct conflict_status_walker_baton*,TYPE_3__* (*) (void*),void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC20(svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          svn_depth_t depth,
                          svn_boolean_t resolve_text,
                          const char *resolve_prop,
                          svn_boolean_t resolve_tree,
                          svn_wc_conflict_choice_t conflict_choice,
                          svn_wc_conflict_resolver_func2_t conflict_func,
                          void *conflict_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          apr_pool_t *scratch_pool)
{
  struct conflict_status_walker_baton cswb;
  apr_pool_t *iterpool = NULL;
  svn_error_t *err;

  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  cswb.db = wc_ctx->db;
  cswb.resolve_text = resolve_text;
  cswb.resolve_prop = resolve_prop;
  cswb.resolve_tree = resolve_tree;
  cswb.conflict_choice = conflict_choice;

  cswb.conflict_func = conflict_func;
  cswb.conflict_baton = conflict_baton;

  cswb.cancel_func = cancel_func;
  cswb.cancel_baton = cancel_baton;

  cswb.notify_func = notify_func;
  cswb.notify_baton = notify_baton;

  cswb.resolved_one = FALSE;
  cswb.resolve_later = (depth != svn_depth_empty)
                          ? FUNC5(scratch_pool)
                          : NULL;

  if (notify_func)
    notify_func(notify_baton,
                FUNC17(local_abspath,
                                    svn_wc_notify_conflict_resolver_starting,
                                    scratch_pool),
                scratch_pool);

  err = FUNC19(wc_ctx,
                           local_abspath,
                           depth,
                           FALSE /* get_all */,
                           FALSE /* no_ignore */,
                           TRUE /* ignore_text_mods */,
                           NULL /* ignore_patterns */,
                           conflict_status_walker, &cswb,
                           cancel_func, cancel_baton,
                           scratch_pool);

  /* If we got new tree conflicts (or delayed conflicts) during the initial
     walk, we now walk them one by one as closure. */
  while (!err && cswb.resolve_later && FUNC3(cswb.resolve_later))
    {
      apr_hash_index_t *hi;
      svn_wc_status3_t *status = NULL;
      const char *tc_abspath = NULL;

      if (iterpool)
        FUNC14(iterpool);
      else
        iterpool = FUNC15(scratch_pool);

      hi = FUNC4(scratch_pool, cswb.resolve_later);
      cswb.resolve_later = FUNC5(scratch_pool);
      cswb.resolved_one = FALSE;

      for (; hi && !err; hi = FUNC6(hi))
        {
          const char *relpath;
          FUNC14(iterpool);

          tc_abspath = FUNC7(hi);

          if (cancel_func)
            FUNC0(cancel_func(cancel_baton));

          relpath = FUNC11(local_abspath,
                                             tc_abspath);

          if (!relpath
              || (depth >= svn_depth_empty
                  && depth < svn_depth_infinity
                  && FUNC9(relpath, '/')))
            {
              continue;
            }

          FUNC0(FUNC18(&status, wc_ctx, tc_abspath,
                                 iterpool, iterpool));

          if (depth == svn_depth_files
              && status->kind == svn_node_dir)
            continue;

          err = FUNC13(FUNC8(&cswb, tc_abspath,
                                                       status, scratch_pool));
        }

      /* None of the remaining conflicts got resolved, and non did provide
         an error...

         We can fix that if we disable the 'resolve_later' option...
       */
      if (!cswb.resolved_one && !err && tc_abspath
          && FUNC3(cswb.resolve_later))
        {
          /* Run the last resolve operation again. We still have status
             and tc_abspath for that one. */

          cswb.resolve_later = NULL; /* Produce proper error! */

          /* Recreate the error */
          err = FUNC13(FUNC8(&cswb, tc_abspath,
                                                       status, scratch_pool));

          FUNC1(err != NULL);

          err = FUNC12(
                    SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                    FUNC2("Unable to resolve pending conflict on '%s'"),
                    FUNC10(tc_abspath, scratch_pool));
          break;
        }
    }

  if (iterpool)
    FUNC16(iterpool);

  if (err && err->apr_err != SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE)
    err = FUNC12(
                SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                FUNC2("Unable to resolve conflicts on '%s'"),
                FUNC10(local_abspath, scratch_pool));

  FUNC0(err);

  if (notify_func)
    notify_func(notify_baton,
                FUNC17(local_abspath,
                                    svn_wc_notify_conflict_resolver_done,
                                    scratch_pool),
                scratch_pool);

  return SVN_NO_ERROR;
}