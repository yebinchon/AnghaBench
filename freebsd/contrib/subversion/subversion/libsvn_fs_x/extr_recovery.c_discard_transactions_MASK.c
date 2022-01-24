#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pool; struct TYPE_8__* next; } ;
typedef  TYPE_1__ svn_fs_x__shared_txn_data_t ;
struct TYPE_9__ {TYPE_1__* txns; } ;
typedef  TYPE_2__ svn_fs_x__shared_data_t ;
struct TYPE_10__ {TYPE_2__* shared; } ;
typedef  TYPE_3__ svn_fs_x__data_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_t *fs,
                     apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__shared_data_t *ffsd = ffd->shared;

  /* In case this FS has been opened more than once in this process,
     we should purge their shared transaction data as well.  We do the
     same as abort_txn would, except that we don't expect all txn files
     to be complete on disk. */
  while (ffsd->txns)
    {
      svn_fs_x__shared_txn_data_t *txn = ffsd->txns;
      ffsd->txns = txn->next;

      FUNC4(txn->pool);
    }

  /* Remove anything from the transaction folders. */
  FUNC0(FUNC1(FUNC3(fs, scratch_pool),
                          scratch_pool));
  FUNC0(FUNC1(FUNC2(fs, scratch_pool),
                          scratch_pool));

  return SVN_NO_ERROR;
}