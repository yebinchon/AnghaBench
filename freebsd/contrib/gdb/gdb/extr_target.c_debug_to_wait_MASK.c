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
struct TYPE_3__ {int /*<<< orphan*/  sig; int /*<<< orphan*/  integer; } ;
struct target_waitstatus {int kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_wait ) (int /*<<< orphan*/ ,struct target_waitstatus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  TARGET_WAITKIND_EXECD 135 
#define  TARGET_WAITKIND_EXITED 134 
#define  TARGET_WAITKIND_FORKED 133 
#define  TARGET_WAITKIND_LOADED 132 
#define  TARGET_WAITKIND_SIGNALLED 131 
#define  TARGET_WAITKIND_SPURIOUS 130 
#define  TARGET_WAITKIND_STOPPED 129 
#define  TARGET_WAITKIND_VFORKED 128 
 TYPE_2__ debug_target ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct target_waitstatus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC4 (ptid_t ptid, struct target_waitstatus *status)
{
  ptid_t retval;

  retval = debug_target.to_wait (ptid, status);

  FUNC1 (gdb_stdlog,
		      "target_wait (%d, status) = %d,   ", FUNC0 (ptid),
		      FUNC0 (retval));
  FUNC1 (gdb_stdlog, "status->kind = ");
  switch (status->kind)
    {
    case TARGET_WAITKIND_EXITED:
      FUNC1 (gdb_stdlog, "exited, status = %d\n",
			  status->value.integer);
      break;
    case TARGET_WAITKIND_STOPPED:
      FUNC1 (gdb_stdlog, "stopped, signal = %s\n",
			  FUNC3 (status->value.sig));
      break;
    case TARGET_WAITKIND_SIGNALLED:
      FUNC1 (gdb_stdlog, "signalled, signal = %s\n",
			  FUNC3 (status->value.sig));
      break;
    case TARGET_WAITKIND_LOADED:
      FUNC1 (gdb_stdlog, "loaded\n");
      break;
    case TARGET_WAITKIND_FORKED:
      FUNC1 (gdb_stdlog, "forked\n");
      break;
    case TARGET_WAITKIND_VFORKED:
      FUNC1 (gdb_stdlog, "vforked\n");
      break;
    case TARGET_WAITKIND_EXECD:
      FUNC1 (gdb_stdlog, "execd\n");
      break;
    case TARGET_WAITKIND_SPURIOUS:
      FUNC1 (gdb_stdlog, "spurious\n");
      break;
    default:
      FUNC1 (gdb_stdlog, "unknown???\n");
      break;
    }

  return retval;
}