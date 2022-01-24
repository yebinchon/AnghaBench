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
struct TYPE_3__ {scalar_t__ ti_type; int ti_state; scalar_t__ ti_startfunc; scalar_t__ ti_pc; int /*<<< orphan*/  ti_lid; int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  int /*<<< orphan*/  td_err_e ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  TD_OK ; 
#define  TD_THR_ACTIVE 134 
#define  TD_THR_RUN 133 
#define  TD_THR_SLEEP 132 
#define  TD_THR_STOPPED 131 
#define  TD_THR_STOPPED_ASLEEP 130 
 scalar_t__ TD_THR_SYSTEM ; 
#define  TD_THR_UNKNOWN 129 
#define  TD_THR_ZOMBIE 128 
 struct minimal_symbol* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6 (const td_thrhandle_t *th, void *s)
{
  td_err_e ret;
  td_thrinfo_t ti;

  if ((ret = FUNC2 (th, &ti)) == TD_OK)
    {
      FUNC4 ("%s thread #%d, lwp %d, ",
		       ti.ti_type == TD_THR_SYSTEM ? "system" : "user  ",
		       ti.ti_tid, ti.ti_lid);
      switch (ti.ti_state)
	{
	default:
	case TD_THR_UNKNOWN:
	  FUNC4 ("<unknown state>");
	  break;
	case TD_THR_STOPPED:
	  FUNC4 ("(stopped)");
	  break;
	case TD_THR_RUN:
	  FUNC4 ("(run)    ");
	  break;
	case TD_THR_ACTIVE:
	  FUNC4 ("(active) ");
	  break;
	case TD_THR_ZOMBIE:
	  FUNC4 ("(zombie) ");
	  break;
	case TD_THR_SLEEP:
	  FUNC4 ("(asleep) ");
	  break;
	case TD_THR_STOPPED_ASLEEP:
	  FUNC4 ("(stopped asleep)");
	  break;
	}
      /* Print thr_create start function: */
      if (ti.ti_startfunc != 0)
	{
	  struct minimal_symbol *msym;
	  msym = FUNC1 (ti.ti_startfunc);
	  if (msym)
	    FUNC4 ("   startfunc: %s\n", FUNC0 (msym));
	  else
	    FUNC4 ("   startfunc: 0x%s\n", FUNC3 (ti.ti_startfunc));
	}

      /* If thread is asleep, print function that went to sleep: */
      if (ti.ti_state == TD_THR_SLEEP)
	{
	  struct minimal_symbol *msym;
	  msym = FUNC1 (ti.ti_pc);
	  if (msym)
	    FUNC4 (" - Sleep func: %s\n", FUNC0 (msym));
	  else
	    FUNC4 (" - Sleep func: 0x%s\n", FUNC3 (ti.ti_startfunc));
	}

      /* Wrap up line, if necessary */
      if (ti.ti_state != TD_THR_SLEEP && ti.ti_startfunc == 0)
	FUNC4 ("\n");	/* don't you hate counting newlines? */
    }
  else
    FUNC5 ("info sol-thread: failed to get info for thread.");

  return 0;
}