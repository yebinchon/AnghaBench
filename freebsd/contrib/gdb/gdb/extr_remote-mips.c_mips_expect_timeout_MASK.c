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
 int SERIAL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  mips_desc ; 
 scalar_t__ remote_debug ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (const char *string, int timeout)
{
  const char *p = string;

  if (remote_debug)
    {
      FUNC0 (gdb_stdlog, "Expected \"");
      FUNC2 (string, gdb_stdlog);
      FUNC0 (gdb_stdlog, "\", got \"");
    }

  immediate_quit++;
  while (1)
    {
      int c;

      /* Must use serial_readchar() here cuz mips_readchar would get
	 confused if we were waiting for the mips_monitor_prompt... */

      c = FUNC3 (mips_desc, timeout);

      if (c == SERIAL_TIMEOUT)
	{
	  if (remote_debug)
	    FUNC0 (gdb_stdlog, "\": FAIL\n");
	  return 0;
	}

      if (remote_debug)
	FUNC1 (c, gdb_stdlog);

      if (c == *p++)
	{
	  if (*p == '\0')
	    {
	      immediate_quit--;
	      if (remote_debug)
		FUNC0 (gdb_stdlog, "\": OK\n");
	      return 1;
	    }
	}
      else
	{
	  p = string;
	  if (c == *p)
	    p++;
	}
    }
}