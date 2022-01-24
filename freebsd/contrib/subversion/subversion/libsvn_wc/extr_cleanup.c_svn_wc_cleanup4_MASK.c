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
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_3__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc_context_t *wc_ctx,
                const char *local_abspath,
                svn_boolean_t break_locks,
                svn_boolean_t fix_recorded_timestamps,
                svn_boolean_t clear_dav_cache,
                svn_boolean_t vacuum_pristines,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                svn_wc_notify_func2_t notify_func,
                void *notify_baton,
                apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db;

  FUNC1(FUNC3(local_abspath));
  FUNC1(wc_ctx != NULL);

  if (break_locks)
    {
      /* We'll handle everything manually.  */

      /* Close the existing database (if any) to avoid problems with
         exclusive database usage */
      FUNC0(FUNC6(wc_ctx->db, local_abspath,
                                   scratch_pool));

      FUNC0(FUNC7(&db,
                              NULL /* ### config */, FALSE, FALSE,
                              scratch_pool, scratch_pool));
    }
  else
    db = wc_ctx->db;

  FUNC0(FUNC2(db, local_abspath,
                           break_locks,
                           fix_recorded_timestamps,
                           vacuum_pristines,
                           cancel_func, cancel_baton,
                           scratch_pool));

  /* The DAV cache suffers from flakiness from time to time, and the
     pre-1.7 prescribed workarounds aren't as user-friendly in WC-NG. */
  if (clear_dav_cache)
    FUNC0(FUNC4(db, local_abspath,
                                                      scratch_pool));

  if (vacuum_pristines)
    FUNC0(FUNC8(db, local_abspath, scratch_pool));

  /* We're done with this DB, so proactively close it.  */
  if (break_locks)
    FUNC0(FUNC5(db));

  return SVN_NO_ERROR;
}