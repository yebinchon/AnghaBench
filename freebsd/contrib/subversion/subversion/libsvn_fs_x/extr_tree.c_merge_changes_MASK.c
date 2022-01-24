#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_4__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(dag_node_t *ancestor_node,
              dag_node_t *source_node,
              svn_fs_txn_t *txn,
              svn_stringbuf_t *conflict,
              apr_pool_t *scratch_pool)
{
  dag_node_t *txn_root_node;
  svn_fs_t *fs = txn->fs;
  svn_fs_x__txn_id_t txn_id = FUNC8(txn);

  FUNC0(FUNC6(&txn_root_node, fs,
                             FUNC4(txn_id),
                             scratch_pool, scratch_pool));

  if (ancestor_node == NULL)
    {
      svn_revnum_t base_rev;
      FUNC0(FUNC7(&base_rev, fs, txn_id, scratch_pool));
      FUNC0(FUNC6(&ancestor_node, fs,
                                 FUNC3(base_rev),
                                 scratch_pool, scratch_pool));
    }

  if (!FUNC5(ancestor_node, txn_root_node))
    {
      /* If no changes have been made in TXN since its current base,
         then it can't conflict with any changes since that base.
         The caller isn't supposed to call us in that case. */
      FUNC1();
    }
  else
    FUNC0(FUNC2(conflict, "/", txn_root_node,
                  source_node, ancestor_node, txn_id, NULL, scratch_pool));

  return SVN_NO_ERROR;
}