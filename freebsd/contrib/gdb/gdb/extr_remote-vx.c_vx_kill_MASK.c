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
struct TYPE_5__ {scalar_t__ pid; } ;
typedef  TYPE_1__ Rptrace ;
typedef  TYPE_2__ Ptrace_return ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_KILL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcerr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  int status;

  FUNC6 ("Killing pid %s.\n", FUNC1 ((unsigned long) FUNC0 (inferior_ptid)));

  FUNC2 ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  FUNC2 ((char *) &ptrace_out, '\0', sizeof (ptrace_out));
  ptrace_in.pid = FUNC0 (inferior_ptid);

  status = FUNC3 (PTRACE_KILL, &ptrace_in, &ptrace_out);
  if (status == -1)
    FUNC7 (rpcerr);
  else if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      FUNC4 ("Killing VxWorks process");
    }

  /* If it gives good status, the process is *gone*, no events remain.
     If the kill failed, assume the process is gone anyhow.  */
  inferior_ptid = null_ptid;
  FUNC5 ();		/* go back to non-executing VxWorks connection */
}