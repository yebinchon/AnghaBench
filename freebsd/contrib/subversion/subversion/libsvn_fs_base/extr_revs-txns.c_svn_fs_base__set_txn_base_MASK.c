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
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  const* base_id; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ transaction_kind_normal ; 

svn_error_t *
FUNC5(svn_fs_t *fs,
                          const char *txn_name,
                          const svn_fs_id_t *new_id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  transaction_t *txn;

  FUNC0(FUNC1(&txn, fs, txn_name, FALSE, trail, pool));
  if (txn->kind != transaction_kind_normal)
    return FUNC3(fs, txn_name);

  if (! FUNC4(txn->base_id, new_id))
    {
      txn->base_id = new_id;
      FUNC0(FUNC2(fs, txn, txn_name, trail, pool));
    }
  return SVN_NO_ERROR;
}