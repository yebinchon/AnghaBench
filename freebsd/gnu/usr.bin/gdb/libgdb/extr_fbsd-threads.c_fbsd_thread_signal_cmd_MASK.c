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
struct TYPE_4__ {scalar_t__ si_signo; scalar_t__ si_errno; int si_code; int /*<<< orphan*/  si_addr; int /*<<< orphan*/  si_status; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_pid; } ;
struct TYPE_5__ {TYPE_1__ ti_siginfo; int /*<<< orphan*/  ti_pending; int /*<<< orphan*/  ti_sigmask; } ;
typedef  TYPE_2__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SI_ASYNCIO 134 
#define  SI_KERNEL 133 
#define  SI_MESGQ 132 
#define  SI_NOINFO 131 
#define  SI_QUEUE 130 
#define  SI_TIMER 129 
#define  SI_USER 128 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fbsd_thread_active ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  thread_agent ; 

__attribute__((used)) static void
FUNC7 (char *exp, int from_tty)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  td_err_e err;
  const char *code;

  if (!fbsd_thread_active || !FUNC1(inferior_ptid))
    return;

  err = FUNC5 (thread_agent, FUNC0 (inferior_ptid), &th);
  if (err != TD_OK)
    return;

  err = FUNC6 (&th, &ti);
  if (err != TD_OK)
    return;

  FUNC3("signal mask:\n");
  FUNC2(&ti.ti_sigmask);
  FUNC3("signal pending:\n");
  FUNC2(&ti.ti_pending);
  if (ti.ti_siginfo.si_signo != 0) {
   FUNC3("si_signo %d si_errno %d", ti.ti_siginfo.si_signo,
     ti.ti_siginfo.si_errno);
   if (ti.ti_siginfo.si_errno != 0)
    FUNC3(" (%s)", FUNC4(ti.ti_siginfo.si_errno));
   FUNC3("\n");
   switch (ti.ti_siginfo.si_code) {
   case SI_NOINFO:
	code = "NOINFO";
	break;
    case SI_USER:
	code = "USER";
	break;
    case SI_QUEUE:
	code = "QUEUE";
	break;
    case SI_TIMER:
	code = "TIMER";
	break;
    case SI_ASYNCIO:
	code = "ASYNCIO";
	break;
    case SI_MESGQ:
	code = "MESGQ";
	break;
    case SI_KERNEL:
	code = "KERNEL";
	break;
    default:
	code = "UNKNOWN";
	break;
    }
    FUNC3("si_code %s (%d) si_pid %d si_uid %d si_status %x "
      "si_addr %p\n",
      code, ti.ti_siginfo.si_code, ti.ti_siginfo.si_pid, ti.ti_siginfo.si_uid,
      ti.ti_siginfo.si_status, ti.ti_siginfo.si_addr);
  }
}