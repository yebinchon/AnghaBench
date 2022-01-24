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
struct serial {int async_state; int /*<<< orphan*/  fd; int /*<<< orphan*/  bufcnt; } ;

/* Variables and functions */
#define  FD_SCHEDULED 129 
#define  NOTHING_SCHEDULED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct serial*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct serial*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  fd_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  push_event ; 
 scalar_t__ FUNC5 (struct serial*) ; 
 scalar_t__ FUNC6 (struct serial*) ; 

__attribute__((used)) static void
FUNC7 (struct serial *scb)
{
  if (FUNC6 (scb))
    {
      int next_state;
      switch (scb->async_state)
	{
	case FD_SCHEDULED:
	  if (scb->bufcnt == 0)
	    next_state = FD_SCHEDULED;
	  else
	    {
	      FUNC2 (scb->fd);
	      next_state = FUNC1 (0, push_event, scb);
	    }
	  break;
	case NOTHING_SCHEDULED:
	  if (scb->bufcnt == 0)
	    {
	      FUNC0 (scb->fd, fd_event, scb);
	      next_state = FD_SCHEDULED;
	    }
	  else
	    {
	      next_state = FUNC1 (0, push_event, scb);
	    }
	  break;
	default: /* TIMER SCHEDULED */
	  if (scb->bufcnt == 0)
	    {
	      FUNC3 (scb->async_state);
	      FUNC0 (scb->fd, fd_event, scb);
	      next_state = FD_SCHEDULED;
	    }
	  else
	    next_state = scb->async_state;
	  break;
	}
      if (FUNC5 (scb))
	{
	  switch (next_state)
	    {
	    case FD_SCHEDULED:
	      if (scb->async_state != FD_SCHEDULED)
		FUNC4 (gdb_stdlog, "[fd%d->fd-scheduled]\n",
				    scb->fd);
	      break;
	    default: /* TIMER SCHEDULED */
	      if (scb->async_state == FD_SCHEDULED)
		FUNC4 (gdb_stdlog, "[fd%d->timer-scheduled]\n",
				    scb->fd);
	      break;
	    }
	}
      scb->async_state = next_state;
    }
}