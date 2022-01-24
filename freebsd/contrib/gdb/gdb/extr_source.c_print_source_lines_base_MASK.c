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
struct symtab {char* filename; int nlines; int /*<<< orphan*/ * line_charpos; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FDOPEN_MODE ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int current_source_line ; 
 struct symtab* current_source_symtab ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct symtab*,int) ; 
 int first_line_listed ; 
 int last_line_listed ; 
 int last_source_error ; 
 struct symtab* last_source_visited ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int,...) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ui_source_list ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20 (struct symtab *s, int line, int stopline, int noerror)
{
  int c;
  int desc;
  FILE *stream;
  int nlines = stopline - line;

  /* Regardless of whether we can open the file, set current_source_symtab. */
  current_source_symtab = s;
  current_source_line = line;
  first_line_listed = line;

  /* If printing of source lines is disabled, just print file and line number */
  if (FUNC17 (uiout, ui_source_list))
    {
      /* Only prints "No such file or directory" once */
      if ((s != last_source_visited) || (!last_source_error))
	{
	  last_source_visited = s;
	  desc = FUNC9 (s);
	}
      else
	{
	  desc = last_source_error;
	  noerror = 1;
	}
    }
  else
    {
      desc = -1;
      noerror = 1;
    }

  if (desc < 0)
    {
      last_source_error = desc;

      if (!noerror)
	{
	  char *name = FUNC0 (FUNC14 (s->filename) + 100);
	  FUNC13 (name, "%d\t%s", line, s->filename);
	  FUNC11 (name, errno);
	}
      else
	FUNC15 (uiout, "line", line);
      FUNC18 (uiout, "\tin ");
      FUNC16 (uiout, "file", s->filename);
      FUNC18 (uiout, "\n");

      return;
    }

  last_source_error = 0;

  if (s->line_charpos == 0)
    FUNC7 (s, desc);

  if (line < 1 || line > s->nlines)
    {
      FUNC2 (desc);
      FUNC3 ("Line number %d out of range; %s has %d lines.",
	     line, s->filename, s->nlines);
    }

  if (FUNC8 (desc, s->line_charpos[line - 1], 0) < 0)
    {
      FUNC2 (desc);
      FUNC10 (s->filename);
    }

  stream = FUNC5 (desc, FDOPEN_MODE);
  FUNC1 (stream);

  while (nlines-- > 0)
    {
      char buf[20];

      c = FUNC6 (stream);
      if (c == EOF)
	break;
      last_line_listed = current_source_line;
      FUNC13 (buf, "%d\t", current_source_line++);
      FUNC18 (uiout, buf);
      do
	{
	  if (c < 040 && c != '\t' && c != '\n' && c != '\r')
	    {
	      FUNC13 (buf, "^%c", c + 0100);
	      FUNC18 (uiout, buf);
	    }
	  else if (c == 0177)
	    FUNC18 (uiout, "^?");
#ifdef CRLF_SOURCE_FILES
	  else if (c == '\r')
	    {
	      /* Skip a \r character, but only before a \n.  */
	      int c1 = fgetc (stream);

	      if (c1 != '\n')
		printf_filtered ("^%c", c + 0100);
	      if (c1 != EOF)
		ungetc (c1, stream);
	    }
#endif
	  else
	    {
	      FUNC13 (buf, "%c", c);
	      FUNC18 (uiout, buf);
	    }
	}
      while (c != '\n' && (c = FUNC6 (stream)) >= 0);
    }

  FUNC4 (stream);
}