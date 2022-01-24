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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct op_copy_baton {int /*<<< orphan*/  src_wcroot; int /*<<< orphan*/ * work_items; int /*<<< orphan*/ * dst_op_root_relpath; int /*<<< orphan*/  is_move; int /*<<< orphan*/  dst_wcroot; int /*<<< orphan*/  dst_relpath; int /*<<< orphan*/  src_relpath; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct op_copy_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_wc__db_t *db,
                                  const char *src_abspath,
                                  const char *dst_abspath,
                                  svn_boolean_t is_move,
                                  apr_pool_t *scratch_pool)
{
  struct op_copy_baton ocb = {0};

  FUNC1(FUNC5(src_abspath));
  FUNC1(FUNC5(dst_abspath));

  FUNC0(FUNC6(&ocb.src_wcroot,
                                                &ocb.src_relpath, db,
                                                src_abspath,
                                                scratch_pool, scratch_pool));
  FUNC3(ocb.src_wcroot);

  FUNC0(FUNC6(&ocb.dst_wcroot,
                                                &ocb.dst_relpath,
                                                db, dst_abspath,
                                                scratch_pool, scratch_pool));
  FUNC3(ocb.dst_wcroot);

  ocb.is_move = is_move;
  ocb.dst_op_root_relpath = NULL; /* not used by op_copy_shadowed_layer_txn */

  ocb.work_items = NULL;

  /* Call with the sdb in src_wcroot. It might call itself again to
     also obtain a lock in dst_wcroot */
  FUNC2(FUNC4(ocb.src_wcroot, &ocb,
                                                 scratch_pool),
                      ocb.src_wcroot);

  return SVN_NO_ERROR;
}