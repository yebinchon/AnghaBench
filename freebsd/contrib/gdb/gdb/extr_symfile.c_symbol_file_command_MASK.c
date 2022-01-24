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
struct cleanup {int dummy; } ;

/* Variables and functions */
 int OBJF_READNOW ; 
 int OBJF_USERLOADED ; 
 char** FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct cleanup* FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void
FUNC9 (char *args, int from_tty)
{
  char **argv;
  char *name = NULL;
  struct cleanup *cleanups;
  int flags = OBJF_USERLOADED;

  FUNC2 ();

  if (args == NULL)
    {
      FUNC8 (from_tty);
    }
  else
    {
      if ((argv = FUNC0 (args)) == NULL)
	{
	  FUNC5 (0);
	}
      cleanups = FUNC4 (argv);
      while (*argv != NULL)
	{
	  if (FUNC6 (*argv, "-readnow") == 0)
	    flags |= OBJF_READNOW;
	  else if (**argv == '-')
	    FUNC3 ("unknown option `%s'", *argv);
	  else
	    {
	      name = *argv;
	      
	      FUNC7 (name, from_tty, flags);
	    }
	  argv++;
	}

      if (name == NULL)
	{
	  FUNC3 ("no symbol file name was specified");
	}
      FUNC1 (cleanups);
    }
}