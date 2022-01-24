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
struct serial {int async_state; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
#define  FD_SCHEDULED 129 
#define  NOTHING_SCHEDULED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (struct serial*) ; 
 scalar_t__ FUNC4 (struct serial*) ; 

void
FUNC5 (struct serial *scb,
		int async_p)
{
  if (async_p)
    {
      /* Force a re-schedule. */
      scb->async_state = NOTHING_SCHEDULED;
      if (FUNC4 (scb))
	FUNC2 (gdb_stdlog, "[fd%d->asynchronous]\n",
			    scb->fd);
      FUNC3 (scb);
    }
  else
    {
      if (FUNC4 (scb))
	FUNC2 (gdb_stdlog, "[fd%d->synchronous]\n",
			    scb->fd);
      /* De-schedule whatever tasks are currently scheduled. */
      switch (scb->async_state)
	{
	case FD_SCHEDULED:
	  FUNC0 (scb->fd);
	  break;
	case NOTHING_SCHEDULED:
	  break;
	default: /* TIMER SCHEDULED */
	  FUNC1 (scb->async_state);
	  break;
	}
    }
}