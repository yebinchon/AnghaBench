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
struct TYPE_3__ {int /*<<< orphan*/  revision; int /*<<< orphan*/ * copies; int /*<<< orphan*/ * proplist; int /*<<< orphan*/  const* base_id; int /*<<< orphan*/  const* root_id; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transaction_kind_normal ; 

svn_error_t *
FUNC3(const char **txn_name_p,
                       svn_fs_t *fs,
                       const svn_fs_id_t *root_id,
                       trail_t *trail,
                       apr_pool_t *pool)
{
  const char *txn_name;
  transaction_t txn;

  FUNC0(FUNC1(&txn_name, fs, trail, pool));
  txn.kind = transaction_kind_normal;
  txn.root_id = root_id;
  txn.base_id = root_id;
  txn.proplist = NULL;
  txn.copies = NULL;
  txn.revision = SVN_INVALID_REVNUM;
  FUNC0(FUNC2(fs, &txn, txn_name, trail, pool));

  *txn_name_p = txn_name;
  return SVN_NO_ERROR;
}