#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int height; int /*<<< orphan*/  is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ TUI_FAILURE ; 
 int /*<<< orphan*/  WIN_HEIGHT_USAGE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 char FUNC4 (char) ; 
 scalar_t__ FUNC5 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct tui_win_info* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12 (char *arg, int from_tty)
{
  /* Make sure the curses mode is enabled.  */
  FUNC6 ();
  if (arg != (char *) NULL)
    {
      char *buf = FUNC11 (arg);
      char *buf_ptr = buf;
      char *wname = (char *) NULL;
      int new_height, i;
      struct tui_win_info * win_info;

      wname = buf_ptr;
      buf_ptr = FUNC2 (buf_ptr, ' ');
      if (buf_ptr != (char *) NULL)
	{
	  *buf_ptr = (char) 0;

	  /*
	     ** Validate the window name
	   */
	  for (i = 0; i < FUNC3 (wname); i++)
	    wname[i] = FUNC4 (wname[i]);
	  win_info = FUNC7 (wname);

	  if (win_info == (struct tui_win_info *) NULL || !win_info->generic.is_visible)
	    FUNC9 ("Invalid window specified. \n\
The window name specified must be valid and visible.\n");
	  else
	    {
	      /* Process the size */
	      while (*(++buf_ptr) == ' ')
		;

	      if (*buf_ptr != (char) 0)
		{
		  int negate = FALSE;
		  int fixed_size = TRUE;
		  int input_no;;

		  if (*buf_ptr == '+' || *buf_ptr == '-')
		    {
		      if (*buf_ptr == '-')
			negate = TRUE;
		      fixed_size = FALSE;
		      buf_ptr++;
		    }
		  input_no = FUNC0 (buf_ptr);
		  if (input_no > 0)
		    {
		      if (negate)
			input_no *= (-1);
		      if (fixed_size)
			new_height = input_no;
		      else
			new_height = win_info->generic.height + input_no;
		      /*
		         ** Now change the window's height, and adjust all
		         ** other windows around it
		       */
		      if (FUNC5 (win_info,
						new_height) == TUI_FAILURE)
			FUNC9 ("Invalid window height specified.\n%s",
				 WIN_HEIGHT_USAGE);
		      else
                        FUNC8 ();
		    }
		  else
		    FUNC9 ("Invalid window height specified.\n%s",
			     WIN_HEIGHT_USAGE);
		}
	    }
	}
      else
	FUNC1 (WIN_HEIGHT_USAGE);

      if (buf != (char *) NULL)
	FUNC10 (buf);
    }
  else
    FUNC1 (WIN_HEIGHT_USAGE);
}