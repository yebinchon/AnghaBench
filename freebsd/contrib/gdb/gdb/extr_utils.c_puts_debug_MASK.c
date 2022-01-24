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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void
FUNC5 (char *prefix, char *string, char *suffix)
{
  int ch;

  /* Print prefix and suffix after each line.  */
  static int new_line = 1;
  static int return_p = 0;
  static char *prev_prefix = "";
  static char *prev_suffix = "";

  if (*string == '\n')
    return_p = 0;

  /* If the prefix is changing, print the previous suffix, a new line,
     and the new prefix.  */
  if ((return_p || (FUNC4 (prev_prefix, prefix) != 0)) && !new_line)
    {
      FUNC2 (prev_suffix, gdb_stdlog);
      FUNC2 ("\n", gdb_stdlog);
      FUNC2 (prefix, gdb_stdlog);
    }

  /* Print prefix if we printed a newline during the previous call.  */
  if (new_line)
    {
      new_line = 0;
      FUNC2 (prefix, gdb_stdlog);
    }

  prev_prefix = prefix;
  prev_suffix = suffix;

  /* Output characters in a printable format.  */
  while ((ch = *string++) != '\0')
    {
      switch (ch)
	{
	default:
	  if (FUNC3 (ch))
	    FUNC1 (ch, gdb_stdlog);

	  else
	    FUNC0 (gdb_stdlog, "\\x%02x", ch & 0xff);
	  break;

	case '\\':
	  FUNC2 ("\\\\", gdb_stdlog);
	  break;
	case '\b':
	  FUNC2 ("\\b", gdb_stdlog);
	  break;
	case '\f':
	  FUNC2 ("\\f", gdb_stdlog);
	  break;
	case '\n':
	  new_line = 1;
	  FUNC2 ("\\n", gdb_stdlog);
	  break;
	case '\r':
	  FUNC2 ("\\r", gdb_stdlog);
	  break;
	case '\t':
	  FUNC2 ("\\t", gdb_stdlog);
	  break;
	case '\v':
	  FUNC2 ("\\v", gdb_stdlog);
	  break;
	}

      return_p = ch == '\r';
    }

  /* Print suffix if we printed a newline.  */
  if (new_line)
    {
      FUNC2 (suffix, gdb_stdlog);
      FUNC2 ("\n", gdb_stdlog);
    }
}