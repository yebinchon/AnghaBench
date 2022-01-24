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
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/ * txn; int /*<<< orphan*/ * root; int /*<<< orphan*/  completed; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
         apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_error_t *err;

  /* Don't allow a following call to svn_fs_editor_commit().  */
  eb->completed = TRUE;

  if (eb->root != NULL)
    {
      FUNC2(eb->root);
      eb->root = NULL;
    }

  /* ### should we examine the error and attempt svn_fs_purge_txn() ?  */
  err = FUNC1(eb->txn, scratch_pool);

  /* For safety, clear the now-useless txn.  */
  eb->txn = NULL;

  return FUNC0(err);
}