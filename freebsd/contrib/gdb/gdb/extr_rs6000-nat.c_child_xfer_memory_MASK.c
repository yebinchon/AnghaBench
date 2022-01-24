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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_WRITE_D ; 
 int /*<<< orphan*/  QUIT ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC7 (CORE_ADDR memaddr, char *myaddr, int len,
		   int write, struct mem_attrib *attrib,
		   struct target_ops *target)
{
  /* Round starting address down to 32-bit word boundary. */
  int mask = sizeof (int) - 1;
  CORE_ADDR addr = memaddr & ~(CORE_ADDR)mask;

  /* Round ending address up to 32-bit word boundary. */
  int count = ((memaddr + len - addr + mask) & ~(CORE_ADDR)mask)
    / sizeof (int);

  /* Allocate word transfer buffer. */
  /* FIXME (alloca): This code, cloned from infptrace.c, is unsafe
     because it uses alloca to allocate a buffer of arbitrary size.
     For very large xfers, this could crash GDB's stack.  */
  int *buf = (int *) FUNC2 (count * sizeof (int));

  int arch64 = FUNC0 ();
  int i;

  if (!write)
    {
      /* Retrieve memory a word at a time. */
      for (i = 0; i < count; i++, addr += sizeof (int))
	{
	  if (!FUNC4 (addr, buf + i, arch64))
	    return 0;
	  QUIT;
	}

      /* Copy memory to supplied buffer. */
      addr -= count * sizeof (int);
      FUNC3 (myaddr, (char *)buf + (memaddr - addr), len);
    }
  else
    {
      /* Fetch leading memory needed for alignment. */
      if (addr < memaddr)
	if (!FUNC4 (addr, buf, arch64))
	  return 0;

      /* Fetch trailing memory needed for alignment. */
      if (addr + count * sizeof (int) > memaddr + len)
	if (!FUNC4 (addr + (count - 1) * sizeof (int),
                        buf + count - 1, arch64))
	  return 0;

      /* Copy supplied data into memory buffer. */
      FUNC3 ((char *)buf + (memaddr - addr), myaddr, len);

      /* Store memory one word at a time. */
      for (i = 0, errno = 0; i < count; i++, addr += sizeof (int))
	{
	  if (arch64)
	    FUNC6 (PT_WRITE_D, FUNC1 (inferior_ptid), addr, buf[i], NULL);
	  else
	    FUNC5 (PT_WRITE_D, FUNC1 (inferior_ptid), (int *)(long) addr,
		      buf[i], NULL);

	  if (errno)
	    return 0;
	  QUIT;
	}
    }

  return len;
}