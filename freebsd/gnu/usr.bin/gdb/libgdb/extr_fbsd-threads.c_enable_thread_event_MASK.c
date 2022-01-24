#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  td_thragent_t ;
struct TYPE_4__ {int /*<<< orphan*/  bptaddr; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ td_notify_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  builtin_type_void_func_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static td_err_e
FUNC4 (td_thragent_t *thread_agent, int event, CORE_ADDR *bp)
{
  td_notify_t notify;
  td_err_e err;

  /* Get the breakpoint address for thread EVENT.  */
  err = FUNC3 (thread_agent, event, &notify);
  if (err != TD_OK)
    return err;

  /* Set up the breakpoint.  */
  (*bp) = FUNC2 (current_gdbarch,
            FUNC1(&notify.u.bptaddr, builtin_type_void_func_ptr),
            &current_target);
  FUNC0 ((*bp));

  return TD_OK;
}