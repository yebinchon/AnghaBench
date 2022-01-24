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
 int /*<<< orphan*/  CTRLC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int quit_flag ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (char **strings)
{
  char *(ptr[10]);
  int n;
  int c;
  char saveaway[100];
  char *buffer = saveaway;
  /* Count number of expect strings  */

  for (n = 0; strings[n]; n++)
    {
      ptr[n] = strings[n];
    }

  while (1)
    {
      int i;
      int gotone = 0;

      c = FUNC6 (1);
      if (c == -1)
	{
	  FUNC3 ("[waiting for e7000...]\n");
	}
#ifdef __GO32__
      if (kbhit ())
	{
	  int k = getkey ();

	  if (k == 1)
	    quit_flag = 1;
	}
#endif
      if (quit_flag)
	{
	  FUNC4 (CTRLC);	/* interrupt the running program */
	  quit_flag = 0;
	}

      for (i = 0; i < n; i++)
	{
	  if (c == ptr[i][0])
	    {
	      ptr[i]++;
	      if (ptr[i][0] == 0)
		{
		  /* Gone all the way */
		  return i;
		}
	      gotone = 1;
	    }
	  else
	    {
	      ptr[i] = strings[i];
	    }
	}

      if (gotone)
	{
	  /* Save it up incase we find that there was no match */
	  *buffer++ = c;
	}
      else
	{
	  if (buffer != saveaway)
	    {
	      *buffer++ = 0;
	      FUNC3 ("%s", buffer);
	      buffer = saveaway;
	    }
	  if (c != -1)
	    {
	      FUNC5 (c);
	      FUNC0 (gdb_stdout);
	    }
	}
    }
}