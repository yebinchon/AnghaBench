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
 scalar_t__ echo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void
FUNC4 (char *string)
{
  char *p = string;
  int c;
  int nl = 0;

  while (1)
    {
      c = FUNC3 (timeout);

      if (echo)
	{
	  if (c == '\r' || c == '\n')
	    {
	      if (!nl)
		FUNC2 ('\n');
	      nl = 1;
	    }
	  else
	    {
	      nl = 0;
	      FUNC2 (c);
	    }
	  FUNC0 (gdb_stdout);
	}
      if (FUNC1 (c) == FUNC1 (*p++))
	{
	  if (*p == '\0')
	    return;
	}
      else
	{
	  p = string;

	  if (FUNC1 (c) == FUNC1 (string[0]))
	    p++;
	}
    }
}