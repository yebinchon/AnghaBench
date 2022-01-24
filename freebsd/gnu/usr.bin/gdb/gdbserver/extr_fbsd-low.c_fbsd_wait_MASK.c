#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread_resume {int thread; scalar_t__ leave_stopped; scalar_t__ sig; scalar_t__ step; } ;
struct thread_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tail; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 TYPE_3__ all_processes ; 
 TYPE_1__ all_threads ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ cont_thread ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct thread_resume*) ; 
 int FUNC9 (struct thread_info*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static unsigned char
FUNC15 (char *status)
{
  int w;
  struct thread_info *child = NULL;

retry:
  /* If we were only supposed to resume one thread, only wait for
     that thread - if it's still alive.  If it died, however - which
     can happen if we're coming from the thread death case below -
     then we need to make sure we restart the other threads.  We could
     pick a thread at random or restart all; restarting all is less
     arbitrary.  */
  if (cont_thread > 0)
    {
      child = (struct thread_info *) FUNC10 (&all_threads,
						       cont_thread);

      /* No stepping, no signal - unless one is pending already, of course.  */
      if (child == NULL)
	{
	  struct thread_resume resume_info;
	  resume_info.thread = -1;
	  resume_info.step = resume_info.sig = resume_info.leave_stopped = 0;
	  FUNC8 (&resume_info);
	}
    }

  FUNC7 ();
  FUNC14 ();
  w = FUNC9 (child);
  FUNC13 ();
  FUNC6 ();

  /* If we are waiting for a particular child, and it exited,
     fbsd_wait_for_event will return its exit status.  Similarly if
     the last child exited.  If this is not the last child, however,
     do not report it as exited until there is a 'thread exited' response
     available in the remote protocol.  Instead, just wait for another event.
     This should be safe, because if the thread crashed we will already
     have reported the termination signal to GDB; that should stop any
     in-progress stepping operations, etc.

     Report the exit status of the last thread to exit.  This matches
     LinuxThreads' behavior.  */

  if (all_threads.head == all_threads.tail)
    {
      if (FUNC1 (w))
	{
	  FUNC11 (stderr, "\nChild exited with retcode = %x \n", FUNC0 (w));
	  *status = 'W';
	  FUNC5 ();
	  FUNC12 (all_processes.head);
	  all_processes.head = *(all_processes.tail = NULL);
	  return ((unsigned char) FUNC0 (w));
	}
      else if (!FUNC2 (w))
	{
	  FUNC11 (stderr, "\nChild terminated with signal = %x \n", FUNC4 (w));
	  *status = 'X';
	  FUNC5 ();
	  FUNC12 (all_processes.head);
	  all_processes.head = *(all_processes.tail = NULL);
	  return ((unsigned char) FUNC4 (w));
	}
    }
  else
    {
      if (!FUNC2 (w))
	goto retry;
    }

  *status = 'T';
  return ((unsigned char) FUNC3 (w));
}