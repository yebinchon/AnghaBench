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
struct edit_baton {int /*<<< orphan*/  txn; scalar_t__ txn_root; scalar_t__ txn_aborted; int /*<<< orphan*/  txn_owner; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  if ((! eb->txn) || (! eb->txn_owner) || eb->txn_aborted)
    return SVN_NO_ERROR;

  eb->txn_aborted = TRUE;

  /* Since abort_edit is supposed to release resources, do it now. */
  if (eb->txn_root)
    FUNC2(eb->txn_root);

  return FUNC0(FUNC1(eb->txn, pool));
}