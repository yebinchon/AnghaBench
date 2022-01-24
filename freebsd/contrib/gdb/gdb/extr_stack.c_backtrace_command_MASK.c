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
struct backtrace_command_args {char* count_exp; int show_locals; int from_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ERROR ; 
 int /*<<< orphan*/  backtrace_command_stub ; 
 char** FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 struct cleanup* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (char *arg, int from_tty)
{
  struct cleanup *old_chain = (struct cleanup *) NULL;
  char **argv = (char **) NULL;
  int argIndicatingFullTrace = (-1), totArgLen = 0, argc = 0;
  char *argPtr = arg;
  struct backtrace_command_args btargs;

  if (arg != (char *) NULL)
    {
      int i;

      argv = FUNC0 (arg);
      old_chain = FUNC3 (argv);
      argc = 0;
      for (i = 0; (argv[i] != (char *) NULL); i++)
	{
	  unsigned int j;

	  for (j = 0; (j < FUNC7 (argv[i])); j++)
	    argv[i][j] = FUNC9 (argv[i][j]);

	  if (argIndicatingFullTrace < 0 && FUNC8 (argv[i], "full"))
	    argIndicatingFullTrace = argc;
	  else
	    {
	      argc++;
	      totArgLen += FUNC7 (argv[i]);
	    }
	}
      totArgLen += argc;
      if (argIndicatingFullTrace >= 0)
	{
	  if (totArgLen > 0)
	    {
	      argPtr = (char *) FUNC11 (totArgLen + 1);
	      if (!argPtr)
		FUNC5 (0);
	      else
		{
		  FUNC4 (argPtr, 0, totArgLen + 1);
		  for (i = 0; (i < (argc + 1)); i++)
		    {
		      if (i != argIndicatingFullTrace)
			{
			  FUNC6 (argPtr, argv[i]);
			  FUNC6 (argPtr, " ");
			}
		    }
		}
	    }
	  else
	    argPtr = (char *) NULL;
	}
    }

  btargs.count_exp = argPtr;
  btargs.show_locals = (argIndicatingFullTrace >= 0);
  btargs.from_tty = from_tty;
  FUNC1 (backtrace_command_stub, (char *)&btargs, "", RETURN_MASK_ERROR);

  if (argIndicatingFullTrace >= 0 && totArgLen > 0)
    FUNC10 (argPtr);

  if (old_chain)
    FUNC2 (old_chain);
}