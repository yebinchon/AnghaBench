#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread_resume {int thread; int leave_stopped; int step; scalar_t__ sig; } ;
typedef  int /*<<< orphan*/  resume_info ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct thread_resume*) ;} ;

/* Variables and functions */
 int cont_thread ; 
 int /*<<< orphan*/  FUNC0 (struct thread_resume*) ; 
 struct thread_resume* FUNC1 (int) ; 
 unsigned char FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 void* FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct thread_resume*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* the_target ; 

void
FUNC11 (char *own_buf, char *status, unsigned char *signal)
{
  char *p, *q;
  int n = 0, i = 0;
  struct thread_resume *resume_info, default_action;

  /* Count the number of semicolons in the packet.  There should be one
     for every action.  */
  p = &own_buf[5];
  while (p)
    {
      n++;
      p++;
      p = FUNC5 (p, ';');
    }
  /* Allocate room for one extra action, for the default remain-stopped
     behavior; if no default action is in the list, we'll need the extra
     slot.  */
  resume_info = FUNC1 ((n + 1) * sizeof (resume_info[0]));

  default_action.thread = -1;
  default_action.leave_stopped = 1;
  default_action.step = 0;
  default_action.sig = 0;

  p = &own_buf[5];
  i = 0;
  while (*p)
    {
      p++;

      resume_info[i].leave_stopped = 0;

      if (p[0] == 's' || p[0] == 'S')
	resume_info[i].step = 1;
      else if (p[0] == 'c' || p[0] == 'C')
	resume_info[i].step = 0;
      else
	goto err;

      if (p[0] == 'S' || p[0] == 'C')
	{
	  int sig;
	  sig = FUNC7 (p + 1, &q, 16);
	  if (p == q)
	    goto err;
	  p = q;

	  if (!FUNC10 (sig))
	    goto err;
	  resume_info[i].sig = FUNC9 (sig);
	}
      else
	{
	  resume_info[i].sig = 0;
	  p = p + 1;
	}

      if (p[0] == 0)
	{
	  resume_info[i].thread = -1;
	  default_action = resume_info[i];

	  /* Note: we don't increment i here, we'll overwrite this entry
	     the next time through.  */
	}
      else if (p[0] == ':')
	{
	  resume_info[i].thread = FUNC7 (p + 1, &q, 16);
	  if (p == q)
	    goto err;
	  p = q;
	  if (p[0] != ';' && p[0] != 0)
	    goto err;

	  i++;
	}
    }

  resume_info[i] = default_action;

  /* Still used in occasional places in the backend.  */
  if (n == 1 && resume_info[0].thread != -1)
    cont_thread = resume_info[0].thread;
  else
    cont_thread = -1;
  FUNC4 (0);

  (*the_target->resume) (resume_info);

  FUNC0 (resume_info);

  *signal = FUNC2 (status, 1);
  FUNC3 (own_buf, *status, *signal);
  return;

err:
  /* No other way to report an error... */
  FUNC6 (own_buf, "");
  FUNC0 (resume_info);
  return;
}