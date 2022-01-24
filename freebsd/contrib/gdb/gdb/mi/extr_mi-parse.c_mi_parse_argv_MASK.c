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
struct mi_parse {char** argv; int argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 void* FUNC4 (int) ; 
 char** FUNC5 (char**,int) ; 

__attribute__((used)) static void
FUNC6 (char *args, struct mi_parse *parse)
{
  char *chp = args;
  int argc = 0;
  char **argv = FUNC4 ((argc + 1) * sizeof (char *));
  argv[argc] = NULL;
  while (1)
    {
      char *arg;
      /* skip leading white space */
      while (FUNC1 (*chp))
	chp++;
      /* Three possibilities: EOF, quoted string, or other text. */
      switch (*chp)
	{
	case '\0':
	  parse->argv = argv;
	  parse->argc = argc;
	  return;
	case '"':
	  {
	    /* A quoted string. */
	    int len;
	    char *start = chp + 1;
	    /* Determine the buffer size. */
	    chp = start;
	    len = 0;
	    while (*chp != '\0' && *chp != '"')
	      {
		if (*chp == '\\')
		  {
		    chp++;
		    if (FUNC2 (&chp) <= 0)
		      {
			/* Do not allow split lines or "\000" */
			FUNC0 (argv);
			return;
		      }
		  }
		else
		  chp++;
		len++;
	      }
	    /* Insist on a closing quote. */
	    if (*chp != '"')
	      {
		FUNC0 (argv);
		return;
	      }
	    /* Insist on trailing white space. */
	    if (chp[1] != '\0' && !FUNC1 (chp[1]))
	      {
		FUNC0 (argv);
		return;
	      }
	    /* create the buffer. */
	    arg = FUNC4 ((len + 1) * sizeof (char));
	    /* And copy the characters in. */
	    chp = start;
	    len = 0;
	    while (*chp != '\0' && *chp != '"')
	      {
		if (*chp == '\\')
		  {
		    chp++;
		    arg[len] = FUNC2 (&chp);
		  }
		else
		  arg[len] = *chp++;
		len++;
	      }
	    arg[len] = '\0';
	    chp++;		/* that closing quote. */
	    break;
	  }
	default:
	  {
	    /* An unquoted string.  Accumulate all non blank
	       characters into a buffer. */
	    int len;
	    char *start = chp;
	    while (*chp != '\0' && !FUNC1 (*chp))
	      {
		chp++;
	      }
	    len = chp - start;
	    arg = FUNC4 ((len + 1) * sizeof (char));
	    FUNC3 (arg, start, len);
	    arg[len] = '\0';
	    break;
	  }
	}
      /* Append arg to argv. */
      argv = FUNC5 (argv, (argc + 2) * sizeof (char *));
      argv[argc++] = arg;
      argv[argc] = NULL;
    }
}