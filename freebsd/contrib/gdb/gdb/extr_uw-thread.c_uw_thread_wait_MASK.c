#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_wait ) (int /*<<< orphan*/ ,struct target_waitstatus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 scalar_t__ TARGET_WAITKIND_STOPPED ; 
 TYPE_2__ base_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct target_waitstatus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC7 (ptid_t ptid, struct target_waitstatus *status)
{
  if (FUNC1 (ptid) > 0)
    ptid = FUNC6 (ptid);
  if (FUNC1 (ptid) <= 0)
    ptid = FUNC4 (-1);

  FUNC0 (ptid = base_ops.to_wait (ptid, status));

  if (status->kind == TARGET_WAITKIND_STOPPED &&
      status->value.sig == TARGET_SIGNAL_TRAP)
    FUNC2 (ptid);

  return FUNC3 (ptid);
}