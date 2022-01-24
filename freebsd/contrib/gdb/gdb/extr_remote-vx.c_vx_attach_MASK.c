#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrace_out ;
typedef  int /*<<< orphan*/  ptrace_in ;
struct TYPE_6__ {int status; int /*<<< orphan*/  errno_num; } ;
struct TYPE_5__ {unsigned long pid; } ;
typedef  TYPE_1__ Rptrace ;
typedef  TYPE_2__ Ptrace_return ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_ATTACH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* rpcerr ; 
 unsigned long FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vx_run_ops ; 
 scalar_t__ vx_running ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (char *args, int from_tty)
{
  unsigned long pid;
  char *cptr = 0;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  int status;

  if (!args)
    FUNC1 ("process-id to attach");

  pid = FUNC9 (args, &cptr, 0);
  if ((cptr == args) || (*cptr != '\0'))
    FUNC0 ("Invalid process-id -- give a single number in decimal or 0xhex");

  if (from_tty)
    FUNC7 ("Attaching pid %s.\n",
		       FUNC2 ((unsigned long) pid));

  FUNC3 ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  FUNC3 ((char *) &ptrace_out, '\0', sizeof (ptrace_out));
  ptrace_in.pid = pid;

  status = FUNC4 (PTRACE_ATTACH, &ptrace_in, &ptrace_out);
  if (status == -1)
    FUNC0 (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      FUNC5 ("Attaching remote process");
    }

  /* It worked... */

  inferior_ptid = FUNC6 (pid);
  FUNC8 (&vx_run_ops);

  if (vx_running)
    FUNC10 (vx_running);
  vx_running = 0;
}