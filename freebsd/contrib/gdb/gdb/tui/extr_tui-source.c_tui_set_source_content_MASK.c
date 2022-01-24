#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int line_no; } ;
struct TYPE_14__ {char* line; int is_exec_point; TYPE_4__ line_or_addr; } ;
struct TYPE_15__ {int line_no; int /*<<< orphan*/  file_name; } ;
struct TYPE_16__ {TYPE_5__ source; TYPE_6__ locator; } ;
struct tui_win_element {TYPE_7__ which_element; } ;
struct TYPE_11__ {int line_no; } ;
struct tui_source_info {char* filename; int horizontal_offset; TYPE_2__ start_line_or_addr; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct symtab {char* filename; int nlines; int /*<<< orphan*/ * line_charpos; } ;
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;
struct TYPE_12__ {int width; int height; char* title; int content_size; scalar_t__* content; } ;
struct TYPE_10__ {struct tui_source_info source_info; } ;
struct TYPE_17__ {TYPE_3__ generic; TYPE_1__ detail; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FOPEN_RT ; 
 int TUI_FAILURE ; 
 TYPE_8__* TUI_SRC_WIN ; 
 int TUI_SUCCESS ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct symtab*,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (TYPE_8__*) ; 
 int FUNC17 () ; 
 struct tui_gen_win_info* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (int) ; 
 void* FUNC21 (char*) ; 

enum tui_status
FUNC22 (struct symtab *s, int line_no, int noerror)
{
  enum tui_status ret = TUI_FAILURE;

  if (s != (struct symtab *) NULL && s->filename != (char *) NULL)
    {
      FILE *stream;
      int i, desc, c, line_width, nlines;
      char *src_line = 0;

      if ((ret = FUNC16 (TUI_SRC_WIN)) == TUI_SUCCESS)
	{
	  line_width = TUI_SRC_WIN->generic.width - 1;
	  /* Take hilite (window border) into account, when calculating
	     the number of lines  */
	  nlines = (line_no + (TUI_SRC_WIN->generic.height - 2)) - line_no;
	  desc = FUNC8 (s);
	  if (desc < 0)
	    {
	      if (!noerror)
		{
		  char *name = FUNC0 (FUNC15 (s->filename) + 100);
		  FUNC12 (name, "%s:%d", s->filename, line_no);
		  FUNC10 (name, errno);
		}
	      ret = TUI_FAILURE;
	    }
	  else
	    {
	      if (s->line_charpos == 0)
		FUNC6 (s, desc);

	      if (line_no < 1 || line_no > s->nlines)
		{
		  FUNC2 (desc);
		  FUNC11 (
			  "Line number %d out of range; %s has %d lines.\n",
				      line_no, s->filename, s->nlines);
		}
	      else if (FUNC7 (desc, s->line_charpos[line_no - 1], 0) < 0)
		{
		  FUNC2 (desc);
		  FUNC9 (s->filename);
		}
	      else
		{
		  int offset, cur_line_no, cur_line, cur_len, threshold;
		  struct tui_gen_win_info * locator = FUNC18 ();
                  struct tui_source_info * src = &TUI_SRC_WIN->detail.source_info;

                  if (TUI_SRC_WIN->generic.title)
                    FUNC19 (TUI_SRC_WIN->generic.title);
                  TUI_SRC_WIN->generic.title = FUNC21 (s->filename);

                  if (src->filename)
                    FUNC19 (src->filename);
                  src->filename = FUNC21 (s->filename);

		  /* Determine the threshold for the length of the line
                     and the offset to start the display.  */
		  offset = src->horizontal_offset;
		  threshold = (line_width - 1) + offset;
		  stream = FUNC4 (desc, FOPEN_RT);
		  FUNC1 (stream);
		  cur_line = 0;
		  cur_line_no = src->start_line_or_addr.line_no = line_no;
		  if (offset > 0)
		    src_line = (char *) FUNC20 (
					   (threshold + 1) * sizeof (char));
		  while (cur_line < nlines)
		    {
		      struct tui_win_element * element = (struct tui_win_element *)
		      TUI_SRC_WIN->generic.content[cur_line];

		      /* get the first character in the line */
		      c = FUNC5 (stream);

		      if (offset == 0)
			src_line = ((struct tui_win_element *)
				   TUI_SRC_WIN->generic.content[
					cur_line])->which_element.source.line;
		      /* Init the line with the line number */
		      FUNC12 (src_line, "%-6d", cur_line_no);
		      cur_len = FUNC15 (src_line);
		      i = cur_len -
			((cur_len / FUNC17 ()) * FUNC17 ());
		      while (i < FUNC17 ())
			{
			  src_line[cur_len] = ' ';
			  i++;
			  cur_len++;
			}
		      src_line[cur_len] = (char) 0;

		      /* Set whether element is the execution point and
		         whether there is a break point on it.  */
		      element->which_element.source.line_or_addr.line_no =
			cur_line_no;
		      element->which_element.source.is_exec_point =
			(FUNC13 (((struct tui_win_element *)
			locator->content[0])->which_element.locator.file_name,
				 s->filename) == 0
			 && cur_line_no == ((struct tui_win_element *)
			 locator->content[0])->which_element.locator.line_no);
		      if (c != EOF)
			{
			  i = FUNC15 (src_line) - 1;
			  do
			    {
			      if ((c != '\n') &&
				  (c != '\r') && (++i < threshold))
				{
				  if (c < 040 && c != '\t')
				    {
				      src_line[i++] = '^';
				      src_line[i] = c + 0100;
				    }
				  else if (c == 0177)
				    {
				      src_line[i++] = '^';
				      src_line[i] = '?';
				    }
				  else
				    {	/* Store the charcter in the line
					   buffer.  If it is a tab, then
					   translate to the correct number of
					   chars so we don't overwrite our
					   buffer.  */
				      if (c == '\t')
					{
					  int j, max_tab_len = FUNC17 ();

					  for (j = i - (
					       (i / max_tab_len) * max_tab_len);
					       ((j < max_tab_len) &&
						i < threshold);
					       i++, j++)
					    src_line[i] = ' ';
					  i--;
					}
				      else
					src_line[i] = c;
				    }
				  src_line[i + 1] = 0;
				}
			      else
				{	/* If we have not reached EOL, then eat
                                           chars until we do  */
				  while (c != EOF && c != '\n' && c != '\r')
				    c = FUNC5 (stream);
				}
			    }
			  while (c != EOF && c != '\n' && c != '\r' &&
				 i < threshold && (c = FUNC5 (stream)));
			}
		      /* Now copy the line taking the offset into account */
		      if (FUNC15 (src_line) > offset)
			FUNC14 (((struct tui_win_element *) TUI_SRC_WIN->generic.content[
					cur_line])->which_element.source.line,
				&src_line[offset]);
		      else
			((struct tui_win_element *)
			 TUI_SRC_WIN->generic.content[
			  cur_line])->which_element.source.line[0] = (char) 0;
		      cur_line++;
		      cur_line_no++;
		    }
		  if (offset > 0)
		    FUNC19 (src_line);
		  FUNC3 (stream);
		  TUI_SRC_WIN->generic.content_size = nlines;
		  ret = TUI_SUCCESS;
		}
	    }
	}
    }
  return ret;
}