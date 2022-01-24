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
struct thread_info {int /*<<< orphan*/  num; int /*<<< orphan*/  ptid; struct thread_info* next; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct thread_info*) ; 
 struct thread_info* thread_list ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13 (char *cmd, int from_tty)
{
  struct thread_info *tp;
  struct cleanup *old_chain;
  struct cleanup *saved_cmd_cleanup_chain;
  char *saved_cmd;

  if (cmd == NULL || *cmd == '\000')
    FUNC1 ("Please specify a command following the thread ID list");

  old_chain = FUNC4 (inferior_ptid);

  /* It is safe to update the thread list now, before
     traversing it for "thread apply all".  MVS */
  FUNC8 ();

  /* Save a copy of the command in case it is clobbered by
     execute_command */
  saved_cmd = FUNC12 (cmd);
  saved_cmd_cleanup_chain = FUNC3 (xfree, (void *) saved_cmd);
  for (tp = thread_list; tp; tp = tp->next)
    if (FUNC11 (tp))
      {
	FUNC7 (tp->ptid);
#ifdef HPUXHPPA
	printf_filtered ("\nThread %d (%s):\n",
			 tp->num, target_tid_to_str (inferior_ptid));
#else
	FUNC5 ("\nThread %d (%s):\n", tp->num,
			 FUNC9 (inferior_ptid));
#endif
	FUNC2 (cmd, from_tty);
	FUNC6 (cmd, saved_cmd);	/* Restore exact command used previously */
      }

  FUNC0 (saved_cmd_cleanup_chain);
  FUNC0 (old_chain);
}