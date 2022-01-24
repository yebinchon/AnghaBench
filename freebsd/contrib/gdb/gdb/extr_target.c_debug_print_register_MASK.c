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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7 (const char * func, int regno)
{
  FUNC3 (gdb_stdlog, "%s ", func);
  if (regno >= 0 && regno < NUM_REGS + NUM_PSEUDO_REGS
      && FUNC1 (regno) != NULL && FUNC1 (regno)[0] != '\0')
    FUNC3 (gdb_stdlog, "(%s)", FUNC1 (regno));
  else
    FUNC3 (gdb_stdlog, "(%d)", regno);
  if (regno >= 0)
    {
      int i;
      unsigned char buf[MAX_REGISTER_SIZE];
      FUNC2 (regno, buf);
      FUNC3 (gdb_stdlog, " = ");
      for (i = 0; i < FUNC0 (regno); i++)
	{
	  FUNC3 (gdb_stdlog, "%02x", buf[i]);
	}
      if (FUNC0 (regno) <= sizeof (LONGEST))
	{
	  FUNC3 (gdb_stdlog, " 0x%s %s",
			      FUNC5 (FUNC6 (regno)),
			      FUNC4 (FUNC6 (regno)));
	}
    }
  FUNC3 (gdb_stdlog, "\n");
}