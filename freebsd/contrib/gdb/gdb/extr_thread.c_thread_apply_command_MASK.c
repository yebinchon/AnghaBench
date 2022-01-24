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
struct thread_info {int /*<<< orphan*/  num; int /*<<< orphan*/  ptid; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct thread_info* FUNC3 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,void*) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16 (char *tidlist, int from_tty)
{
  char *cmd;
  char *p;
  struct cleanup *old_chain;
  struct cleanup *saved_cmd_cleanup_chain;
  char *saved_cmd;

  if (tidlist == NULL || *tidlist == '\000')
    FUNC1 ("Please specify a thread ID list");

  for (cmd = tidlist; *cmd != '\000' && !FUNC4 (*cmd); cmd++);

  if (*cmd == '\000')
    FUNC1 ("Please specify a command following the thread ID list");

  old_chain = FUNC6 (inferior_ptid);

  /* Save a copy of the command in case it is clobbered by
     execute_command */
  saved_cmd = FUNC15 (cmd);
  saved_cmd_cleanup_chain = FUNC5 (xfree, (void *) saved_cmd);
  while (tidlist < cmd)
    {
      struct thread_info *tp;
      int start, end;

      start = FUNC9 (tidlist, &p, 10);
      if (p == tidlist)
	FUNC1 ("Error parsing %s", tidlist);
      tidlist = p;

      while (*tidlist == ' ' || *tidlist == '\t')
	tidlist++;

      if (*tidlist == '-')	/* Got a range of IDs? */
	{
	  tidlist++;		/* Skip the - */
	  end = FUNC9 (tidlist, &p, 10);
	  if (p == tidlist)
	    FUNC1 ("Error parsing %s", tidlist);
	  tidlist = p;

	  while (*tidlist == ' ' || *tidlist == '\t')
	    tidlist++;
	}
      else
	end = start;

      for (; start <= end; start++)
	{
	  tp = FUNC3 (start);

	  if (!tp)
	    FUNC14 ("Unknown thread %d.", start);
	  else if (!FUNC13 (tp))
	    FUNC14 ("Thread %d has terminated.", start);
	  else
	    {
	      FUNC10 (tp->ptid);
#ifdef HPUXHPPA
	      printf_filtered ("\nThread %d (%s):\n", tp->num,
			       target_tid_to_str (inferior_ptid));
#else
	      FUNC7 ("\nThread %d (%s):\n", tp->num,
			       FUNC11 (inferior_ptid));
#endif
	      FUNC2 (cmd, from_tty);
	      FUNC8 (cmd, saved_cmd);	/* Restore exact command used previously */
	    }
	}
    }

  FUNC0 (saved_cmd_cleanup_chain);
  FUNC0 (old_chain);
}