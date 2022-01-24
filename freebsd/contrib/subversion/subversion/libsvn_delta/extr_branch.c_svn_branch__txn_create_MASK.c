#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_branch__txn_vtable_t ;
struct TYPE_7__ {TYPE_4__* vtable; } ;
typedef  TYPE_2__ svn_branch__txn_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/ * state_pool; void* finished; void* within_callback; void* cancel_baton; int /*<<< orphan*/  cancel_func; } ;
struct TYPE_8__ {TYPE_1__ vpriv; } ;

/* Variables and functions */
 void* FALSE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

svn_branch__txn_t *
FUNC2(const svn_branch__txn_vtable_t *vtable,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *result_pool)
{
  svn_branch__txn_t *txn = FUNC0(result_pool, sizeof(*txn));

  txn->vtable = FUNC1(result_pool, vtable, sizeof(*vtable));

  txn->vtable->vpriv.cancel_func = cancel_func;
  txn->vtable->vpriv.cancel_baton = cancel_baton;

#ifdef ENABLE_ORDERING_CHECK
  txn->vtable->vpriv.within_callback = FALSE;
  txn->vtable->vpriv.finished = FALSE;
  txn->vtable->vpriv.state_pool = result_pool;
#endif

  return txn;
}