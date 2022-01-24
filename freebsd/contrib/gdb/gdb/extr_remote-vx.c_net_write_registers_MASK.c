#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  ptrace_out ;
typedef  int /*<<< orphan*/  ptrace_in ;
typedef  scalar_t__ caddr_t ;
struct TYPE_10__ {char* bytes; int len; } ;
struct TYPE_9__ {int status; int /*<<< orphan*/  errno_num; } ;
struct TYPE_7__ {scalar_t__ more_data; int /*<<< orphan*/  ttype; } ;
struct TYPE_8__ {TYPE_1__ info; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ Rptrace ;
typedef  TYPE_3__ Ptrace_return ;
typedef  TYPE_4__ C_bytes ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PTRACE_SETREGS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (scalar_t__,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  rpcerr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

void
FUNC6 (char *reg_buf, int len, u_long procnum)
{
  int status;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  C_bytes in_data;
  char message[100];

  FUNC2 ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  FUNC2 ((char *) &ptrace_out, '\0', sizeof (ptrace_out));

  /* Initialize RPC input argument structure.  */

  in_data.bytes = reg_buf;
  in_data.len = len;

  ptrace_in.pid = FUNC0 (inferior_ptid);
  ptrace_in.info.ttype = DATA;
  ptrace_in.info.more_data = (caddr_t) & in_data;

  /* Call RPC; take an error exit if appropriate.  */

  status = FUNC3 (procnum, &ptrace_in, &ptrace_out);
  if (status)
    FUNC1 (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      FUNC5 (message, "writing %s registers", (procnum == PTRACE_SETREGS)
	       ? "general-purpose"
	       : "floating-point");
      FUNC4 (message);
    }
}