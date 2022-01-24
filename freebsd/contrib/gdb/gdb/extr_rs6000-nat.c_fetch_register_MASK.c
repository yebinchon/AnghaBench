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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_READ_FPR ; 
 int /*<<< orphan*/  PT_READ_GPR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (int*,long long*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

__attribute__((used)) static void
FUNC10 (int regno)
{
  int addr[MAX_REGISTER_SIZE];
  int nr, isfloat;

  /* Retrieved values may be -1, so infer errors from errno. */
  errno = 0;

  nr = FUNC6 (regno, &isfloat);

  /* Floating-point registers. */
  if (isfloat)
    FUNC7 (PT_READ_FPR, FUNC2 (inferior_ptid), addr, nr, 0);

  /* Bogus register number. */
  else if (nr < 0)
    {
      if (regno >= NUM_REGS)
	FUNC3 (gdb_stderr,
			    "gdb error: register no %d not implemented.\n",
			    regno);
      return;
    }

  /* Fixed-point registers. */
  else
    {
      if (!FUNC0 ())
	*addr = FUNC7 (PT_READ_GPR, FUNC2 (inferior_ptid), (int *)nr, 0, 0);
      else
	{
	  /* PT_READ_GPR requires the buffer parameter to point to long long,
	     even if the register is really only 32 bits. */
	  long long buf;
	  FUNC8 (PT_READ_GPR, FUNC2 (inferior_ptid), nr, 0, (int *)&buf);
	  if (FUNC1 (regno) == 8)
	    FUNC4 (addr, &buf, 8);
	  else
	    *addr = buf;
	}
    }

  if (!errno)
    FUNC9 (regno, (char *) addr);
  else
    {
#if 0
      /* FIXME: this happens 3 times at the start of each 64-bit program. */
      perror ("ptrace read");
#endif
      errno = 0;
    }
}