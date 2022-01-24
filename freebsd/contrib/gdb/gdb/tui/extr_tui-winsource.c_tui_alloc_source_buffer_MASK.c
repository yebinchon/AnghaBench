#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int height; int width; void** content; } ;
struct tui_win_info {TYPE_3__ generic; } ;
struct TYPE_4__ {char* line; } ;
struct TYPE_5__ {TYPE_1__ source; } ;
struct tui_win_element {TYPE_2__ which_element; } ;
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;

/* Variables and functions */
 int /*<<< orphan*/  SRC_WIN ; 
 int TUI_FAILURE ; 
 int TUI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

enum tui_status
FUNC4 (struct tui_win_info *win_info)
{
  char *src_line_buf;
  int i, line_width, max_lines;
  enum tui_status ret = TUI_FAILURE;

  max_lines = win_info->generic.height;	/* less the highlight box */
  line_width = win_info->generic.width - 1;
  /*
     ** Allocate the buffer for the source lines.  Do this only once since they
     ** will be re-used for all source displays.  The only other time this will
     ** be done is when a window's size changes.
   */
  if (win_info->generic.content == NULL)
    {
      src_line_buf = (char *) FUNC3 ((max_lines * line_width) * sizeof (char));
      if (src_line_buf == (char *) NULL)
	FUNC0 (
	   "Unable to Allocate Memory for Source or Disassembly Display.\n",
			   gdb_stderr);
      else
	{
	  /* allocate the content list */
	  if ((win_info->generic.content =
	  (void **) FUNC1 (max_lines, SRC_WIN)) == NULL)
	    {
	      FUNC2 (src_line_buf);
	      src_line_buf = (char *) NULL;
	      FUNC0 (
				 "Unable to Allocate Memory for Source or Disassembly Display.\n",
				 gdb_stderr);
	    }
	}
      for (i = 0; i < max_lines; i++)
	((struct tui_win_element *)
	 win_info->generic.content[i])->which_element.source.line =
	  src_line_buf + (line_width * i);
      ret = TUI_SUCCESS;
    }
  else
    ret = TUI_SUCCESS;

  return ret;
}