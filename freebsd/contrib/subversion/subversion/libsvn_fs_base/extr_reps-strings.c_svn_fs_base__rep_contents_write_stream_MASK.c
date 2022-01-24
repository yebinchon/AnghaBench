#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct rep_write_baton {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rep_write_close_contents ; 
 int /*<<< orphan*/  rep_write_contents ; 
 struct rep_write_baton* FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct rep_write_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(svn_stream_t **ws_p,
                                       svn_fs_t *fs,
                                       const char *rep_key,
                                       const char *txn_id,
                                       svn_boolean_t use_trail_for_writes,
                                       trail_t *trail,
                                       apr_pool_t *pool)
{
  struct rep_write_baton *wb;

  /* Clear the current rep contents (free mutability check!). */
  FUNC0(FUNC1(fs, rep_key, txn_id, trail, pool));

  /* Now, generate the write baton and stream. */
  wb = FUNC2(fs, rep_key, txn_id,
                           use_trail_for_writes ? trail : NULL, pool);
  *ws_p = FUNC3(wb, pool);
  FUNC5(*ws_p, rep_write_contents);
  FUNC4(*ws_p, rep_write_close_contents);

  return SVN_NO_ERROR;
}