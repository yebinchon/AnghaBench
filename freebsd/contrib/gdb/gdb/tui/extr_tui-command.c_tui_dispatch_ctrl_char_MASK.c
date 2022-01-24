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
struct TYPE_2__ {int /*<<< orphan*/ * handle; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 unsigned int ERR ; 
#define  KEY_DOWN 135 
#define  KEY_LEFT 134 
#define  KEY_NPAGE 133 
#define  KEY_PPAGE 132 
#define  KEY_RIGHT 131 
#define  KEY_SF 130 
#define  KEY_SR 129 
#define  KEY_UP 128 
 struct tui_win_info* TUI_CMD_WIN ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tui_win_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tui_win_info*,int) ; 
 struct tui_win_info* FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

unsigned int
FUNC12 (unsigned int ch)
{
  struct tui_win_info *win_info = FUNC10 ();
  WINDOW *w = TUI_CMD_WIN->generic.handle;

  /*
     ** If the command window has the logical focus, or no-one does
     ** assume it is the command window; in this case, pass the
     ** character on through and do nothing here.
   */
  if (win_info == NULL || win_info == TUI_CMD_WIN)
    return ch;
  else
    {
      unsigned int c = 0, ch_copy = ch;
      int i;
      char *term;

      /* If this is an xterm, page next/prev keys aren't returned
         ** by keypad as a single char, so we must handle them here.
         ** Seems like a bug in the curses library?
       */
      term = (char *) FUNC0 ("TERM");
      for (i = 0; (term && term[i]); i++)
	term[i] = FUNC4 (term[i]);
      if ((FUNC3 (term, "XTERM") == 0) && FUNC2 (ch))
	{
	  unsigned int page_ch = 0;
	  unsigned int tmp_char;

	  tmp_char = 0;
	  while (!FUNC1 (tmp_char))
	    {
	      tmp_char = (int) FUNC11 (w);
	      if (tmp_char == ERR)
		{
		  return ch;
		}
	      if (!tmp_char)
		break;
	      if (tmp_char == 53)
		page_ch = KEY_PPAGE;
	      else if (tmp_char == 54)
		page_ch = KEY_NPAGE;
	      else
		{
		  return 0;
		}
	    }
	  ch_copy = page_ch;
	}

      switch (ch_copy)
	{
	case KEY_NPAGE:
	  FUNC7 (win_info, 0);
	  break;
	case KEY_PPAGE:
	  FUNC6 (win_info, 0);
	  break;
	case KEY_DOWN:
	case KEY_SF:
	  FUNC7 (win_info, 1);
	  break;
	case KEY_UP:
	case KEY_SR:
	  FUNC6 (win_info, 1);
	  break;
	case KEY_RIGHT:
	  FUNC8 (win_info, 1);
	  break;
	case KEY_LEFT:
	  FUNC9 (win_info, 1);
	  break;
	case '\f':
	  FUNC5 ();
	  break;
	default:
	  c = ch_copy;
	  break;
	}
      return c;
    }
}