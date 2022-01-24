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
typedef  int /*<<< orphan*/  PTRACE_XFER_TYPE ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PT_READ_D ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  inferior_pid ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (CORE_ADDR memaddr, char *myaddr, int len)
{
  register int i;
  /* Round starting address down to longword boundary.  */
  register CORE_ADDR addr = memaddr & -(CORE_ADDR) sizeof (PTRACE_XFER_TYPE);
  /* Round ending address up; get number of longwords that makes.  */
  register int count
    = (((memaddr + len) - addr) + sizeof (PTRACE_XFER_TYPE) - 1)
      / sizeof (PTRACE_XFER_TYPE);
  /* Allocate buffer of that many longwords.  */
  register PTRACE_XFER_TYPE *buffer
    = (PTRACE_XFER_TYPE *) FUNC0 (count * sizeof (PTRACE_XFER_TYPE));

  /* Read all the longwords */
  for (i = 0; i < count; i++, addr += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      buffer[i] = FUNC2 (PT_READ_D, inferior_pid, (PTRACE_ARG3_TYPE) (intptr_t)addr, 0);
      if (errno)
	return errno;
    }

  /* Copy appropriate bytes out of the buffer.  */
  FUNC1 (myaddr, (char *) buffer + (memaddr & (sizeof (PTRACE_XFER_TYPE) - 1)), len);

  return 0;
}