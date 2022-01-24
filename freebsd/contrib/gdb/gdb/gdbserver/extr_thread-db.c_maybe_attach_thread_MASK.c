#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ti_lid; int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
struct thread_info {int dummy; } ;
struct process_info {int thread_known; int /*<<< orphan*/  lwpid; int /*<<< orphan*/  tid; } ;
struct TYPE_7__ {scalar_t__ head; scalar_t__ tail; } ;

/* Variables and functions */
 scalar_t__ TD_OK ; 
 TYPE_3__ all_threads ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_threads ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct process_info* FUNC4 (struct thread_info*) ; 
 struct process_info* FUNC5 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (const td_thrhandle_t *th_p, td_thrinfo_t *ti_p)
{
  td_err_e err;
  struct thread_info *inferior;
  struct process_info *process;

  /* If we are attaching to our first thread, things are a little
     different.  */
  if (all_threads.head == all_threads.tail)
    {
      inferior = (struct thread_info *) all_threads.head;
      process = FUNC4 (inferior);
      if (process->thread_known == 0)
	{
	  /* Switch to indexing the threads list by TID.  */
	  FUNC0 (&all_threads, ti_p->ti_tid);
	  goto found;
	}
    }
  
  inferior = (struct thread_info *) FUNC2 (&all_threads,
						      ti_p->ti_tid);
  if (inferior != NULL)
    return;

  if (debug_threads)
    FUNC3 (stderr, "Attaching to thread %d (LWP %d)\n",
	     ti_p->ti_tid, ti_p->ti_lid);
  FUNC6 (ti_p->ti_lid, ti_p->ti_tid);
  inferior = (struct thread_info *) FUNC2 (&all_threads,
						      ti_p->ti_tid);
  if (inferior == NULL)
    {
      FUNC10 ("Could not attach to thread %ld (LWP %d)\n",
	       ti_p->ti_tid, ti_p->ti_lid);
      return;
    }

  process = FUNC5 (inferior);

found:
  FUNC7 (ti_p->ti_tid);

  process->tid = ti_p->ti_tid;
  process->lwpid = ti_p->ti_lid;

  process->thread_known = 1;
  err = FUNC8 (th_p, 1);
  if (err != TD_OK)
    FUNC1 ("Cannot enable thread event reporting for %d: %s",
           ti_p->ti_lid, FUNC9 (err));
}