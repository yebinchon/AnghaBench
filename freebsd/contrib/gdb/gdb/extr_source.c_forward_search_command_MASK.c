#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nlines; int /*<<< orphan*/  filename; int /*<<< orphan*/ * line_charpos; } ;
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FDOPEN_MODE ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  current_source_line ; 
 TYPE_1__* current_source_symtab ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int last_line_listed ; 
 int lines_to_list ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC19 (int) ; 
 char* FUNC20 (char*,int) ; 

__attribute__((used)) static void
FUNC21 (char *regex, int from_tty)
{
  int c;
  int desc;
  FILE *stream;
  int line;
  char *msg;

  line = last_line_listed + 1;

  msg = (char *) FUNC14 (regex);
  if (msg)
    FUNC2 ("%s", msg);

  if (current_source_symtab == 0)
    FUNC16 (0);

  desc = FUNC10 (current_source_symtab);
  if (desc < 0)
    FUNC11 (current_source_symtab->filename);

  if (current_source_symtab->line_charpos == 0)
    FUNC5 (current_source_symtab, desc);

  if (line < 1 || line > current_source_symtab->nlines)
    {
      FUNC1 (desc);
      FUNC2 ("Expression not found");
    }

  if (FUNC8 (desc, current_source_symtab->line_charpos[line - 1], 0) < 0)
    {
      FUNC1 (desc);
      FUNC11 (current_source_symtab->filename);
    }

  stream = FUNC4 (desc, FDOPEN_MODE);
  FUNC0 (stream);
  while (1)
    {
      static char *buf = NULL;
      char *p;
      int cursize, newsize;

      cursize = 256;
      buf = FUNC19 (cursize);
      p = buf;

      c = FUNC6 (stream);
      if (c == EOF)
	break;
      do
	{
	  *p++ = c;
	  if (p - buf == cursize)
	    {
	      newsize = cursize + cursize / 2;
	      buf = FUNC20 (buf, newsize);
	      p = buf + cursize;
	      cursize = newsize;
	    }
	}
      while (c != '\n' && (c = FUNC6 (stream)) >= 0);

#ifdef CRLF_SOURCE_FILES
      /* Remove the \r, if any, at the end of the line, otherwise
         regular expressions that end with $ or \n won't work.  */
      if (p - buf > 1 && p[-2] == '\r')
	{
	  p--;
	  p[-1] = '\n';
	}
#endif

      /* we now have a source line in buf, null terminate and match */
      *p = 0;
      if (FUNC15 (buf) > 0)
	{
	  /* Match! */
	  FUNC3 (stream);
	  FUNC12 (current_source_symtab, line, line + 1, 0);
	  FUNC17 (FUNC7 ("_"),
			   FUNC18 (builtin_type_int,
					       (LONGEST) line));
	  current_source_line = FUNC9 (line - lines_to_list / 2, 1);
	  return;
	}
      line++;
    }

  FUNC13 ("Expression not found\n");
  FUNC3 (stream);
}