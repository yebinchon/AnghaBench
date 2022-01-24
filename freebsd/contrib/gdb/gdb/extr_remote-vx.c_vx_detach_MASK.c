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
 int /*<<< orphan*/  PTRACE_DETACH ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* rpcerr ; 

__attribute__((used)) static void
FUNC9 (char *args, int from_tty)
{
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  int signal = 0;
  int status;

  if (args)
    FUNC2 ("Argument given to VxWorks \"detach\".");

  if (from_tty)
    FUNC8 ("Detaching pid %s.\n",
		       FUNC3 (
		         (unsigned long) FUNC0 (inferior_ptid)));

  if (args)			/* FIXME, should be possible to leave suspended */
    signal = FUNC1 (args);

  FUNC4 ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  FUNC4 ((char *) &ptrace_out, '\0', sizeof (ptrace_out));
  ptrace_in.pid = FUNC0 (inferior_ptid);

  status = FUNC5 (PTRACE_DETACH, &ptrace_in, &ptrace_out);
  if (status == -1)
    FUNC2 (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      FUNC6 ("Detaching VxWorks process");
    }

  inferior_ptid = null_ptid;
  FUNC7 ();		/* go back to non-executing VxWorks connection */
}