#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_pathrev_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {scalar_t__ rev; scalar_t__ eid; } ;
struct TYPE_12__ {TYPE_2__ branch_ref; } ;
typedef  TYPE_1__ svn_element__payload_t ;
typedef  TYPE_2__ svn_element__branch_ref_t ;
struct TYPE_14__ {int /*<<< orphan*/  repos; } ;
typedef  TYPE_3__ svn_branch__txn_t ;
struct TYPE_15__ {void* fetch_baton; int /*<<< orphan*/  fetch_func; TYPE_3__* txn; } ;
typedef  TYPE_4__ svn_branch__txn_priv_t ;
typedef  int /*<<< orphan*/  svn_branch__compat_fetch_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_element__payload_t **payload_p,
                         svn_branch__txn_t *txn,
                         svn_element__branch_ref_t branch_ref,
                         svn_branch__compat_fetch_func_t fetch_func,
                         void *fetch_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_branch__txn_priv_t eb;
  svn_pathrev_t storage_pathrev;

  /* Simulate the existence of /top0 in r0. */
  if (branch_ref.rev == 0 && branch_ref.eid == 0)
    {
      *payload_p = FUNC4(FUNC1(result_pool),
                                                   result_pool);
      return SVN_NO_ERROR;
    }

  eb.txn = txn;
  eb.fetch_func = fetch_func;
  eb.fetch_baton = fetch_baton;

  FUNC0(FUNC3(&storage_pathrev,
                                          branch_ref, txn->repos,
                                          scratch_pool, scratch_pool));

  FUNC0(FUNC2(payload_p, NULL,
                        &eb, &storage_pathrev, result_pool, scratch_pool));
  (*payload_p)->branch_ref = branch_ref;
  return SVN_NO_ERROR;
}