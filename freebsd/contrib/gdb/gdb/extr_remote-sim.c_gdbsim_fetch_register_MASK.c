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
 int FUNC0 (int) ; 
#define  LEGACY_SIM_REGNO_IGNORE 129 
 int MAX_REGISTER_SIZE ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  SIM_REGNO_DOES_NOT_EXIST 128 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdbsim_desc ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void
FUNC12 (int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	FUNC12 (regno);
      return;
    }

  switch (FUNC2 (regno))
    {
    case LEGACY_SIM_REGNO_IGNORE:
      break;
    case SIM_REGNO_DOES_NOT_EXIST:
      {
	/* For moment treat a `does not exist' register the same way
           as an ``unavailable'' register.  */
	char buf[MAX_REGISTER_SIZE];
	int nr_bytes;
	FUNC6 (buf, 0, MAX_REGISTER_SIZE);
	FUNC11 (regno, buf);
	FUNC8 (regno, -1);
	break;
      }
    default:
      {
	static int warn_user = 1;
	char buf[MAX_REGISTER_SIZE];
	int nr_bytes;
	FUNC5 (regno >= 0 && regno < NUM_REGS);
	FUNC6 (buf, 0, MAX_REGISTER_SIZE);
	nr_bytes = FUNC9 (gdbsim_desc,
				       FUNC2 (regno),
				       buf, FUNC0 (regno));
	if (nr_bytes > 0 && nr_bytes != FUNC0 (regno) && warn_user)
	  {
	    FUNC4 (gdb_stderr,
				"Size of register %s (%d/%d) incorrect (%d instead of %d))",
				FUNC1 (regno),
				regno, FUNC2 (regno),
				nr_bytes, FUNC0 (regno));
	    warn_user = 0;
	  }
	/* FIXME: cagney/2002-05-27: Should check `nr_bytes == 0'
	   indicating that GDB and the SIM have different ideas about
	   which registers are fetchable.  */
	/* Else if (nr_bytes < 0): an old simulator, that doesn't
	   think to return the register size.  Just assume all is ok.  */
	FUNC11 (regno, buf);
	if (FUNC10 ())
	  {
	    FUNC7 ("gdbsim_fetch_register: %d", regno);
	    /* FIXME: We could print something more intelligible.  */
	    FUNC3 (buf, FUNC0 (regno));
	  }
	break;
      }
    }
}