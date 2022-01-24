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
 int /*<<< orphan*/  PT_WRITE_FPR ; 
 int /*<<< orphan*/  PT_WRITE_GPR ; 
 int SP_REGNUM ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (long long*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*) ; 
 int FUNC8 (int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC11 (int regno)
{
  int addr[MAX_REGISTER_SIZE];
  int nr, isfloat;

  /* Fetch the register's value from the register cache.  */
  FUNC7 (regno, addr);

  /* -1 can be a successful return value, so infer errors from errno. */
  errno = 0;

  nr = FUNC8 (regno, &isfloat);

  /* Floating-point registers. */
  if (isfloat)
    FUNC9 (PT_WRITE_FPR, FUNC2 (inferior_ptid), addr, nr, 0);

  /* Bogus register number. */
  else if (nr < 0)
    {
      if (regno >= NUM_REGS)
	FUNC4 (gdb_stderr,
			    "gdb error: register no %d not implemented.\n",
			    regno);
    }

  /* Fixed-point registers. */
  else
    {
      if (regno == SP_REGNUM)
	/* Execute one dummy instruction (which is a breakpoint) in inferior
	   process to give kernel a chance to do internal housekeeping.
	   Otherwise the following ptrace(2) calls will mess up user stack
	   since kernel will get confused about the bottom of the stack
	   (%sp). */
	FUNC3 ();

      /* The PT_WRITE_GPR operation is rather odd.  For 32-bit inferiors,
         the register's value is passed by value, but for 64-bit inferiors,
	 the address of a buffer containing the value is passed.  */
      if (!FUNC0 ())
	FUNC9 (PT_WRITE_GPR, FUNC2 (inferior_ptid), (int *)nr, *addr, 0);
      else
	{
	  /* PT_WRITE_GPR requires the buffer parameter to point to an 8-byte
	     area, even if the register is really only 32 bits. */
	  long long buf;
	  if (FUNC1 (regno) == 8)
	    FUNC5 (&buf, addr, 8);
	  else
	    buf = *addr;
	  FUNC10 (PT_WRITE_GPR, FUNC2 (inferior_ptid), nr, 0, (int *)&buf);
	}
    }

  if (errno)
    {
      FUNC6 ("ptrace write");
      errno = 0;
    }
}