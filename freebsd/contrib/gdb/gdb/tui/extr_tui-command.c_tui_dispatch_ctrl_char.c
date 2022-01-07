
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef int WINDOW ;


 unsigned int ERR ;
 struct tui_win_info* TUI_CMD_WIN ;
 scalar_t__ getenv (char*) ;
 int key_is_end_sequence (unsigned int) ;
 scalar_t__ key_is_start_sequence (unsigned int) ;
 scalar_t__ strcmp (char*,char*) ;
 char toupper (char) ;
 int tui_refresh_all_win () ;
 int tui_scroll_backward (struct tui_win_info*,int) ;
 int tui_scroll_forward (struct tui_win_info*,int) ;
 int tui_scroll_left (struct tui_win_info*,int) ;
 int tui_scroll_right (struct tui_win_info*,int) ;
 struct tui_win_info* tui_win_with_focus () ;
 scalar_t__ wgetch (int *) ;

unsigned int
tui_dispatch_ctrl_char (unsigned int ch)
{
  struct tui_win_info *win_info = tui_win_with_focus ();
  WINDOW *w = TUI_CMD_WIN->generic.handle;






  if (win_info == ((void*)0) || win_info == TUI_CMD_WIN)
    return ch;
  else
    {
      unsigned int c = 0, ch_copy = ch;
      int i;
      char *term;





      term = (char *) getenv ("TERM");
      for (i = 0; (term && term[i]); i++)
 term[i] = toupper (term[i]);
      if ((strcmp (term, "XTERM") == 0) && key_is_start_sequence (ch))
 {
   unsigned int page_ch = 0;
   unsigned int tmp_char;

   tmp_char = 0;
   while (!key_is_end_sequence (tmp_char))
     {
       tmp_char = (int) wgetch (w);
       if (tmp_char == ERR)
  {
    return ch;
  }
       if (!tmp_char)
  break;
       if (tmp_char == 53)
  page_ch = 132;
       else if (tmp_char == 54)
  page_ch = 133;
       else
  {
    return 0;
  }
     }
   ch_copy = page_ch;
 }

      switch (ch_copy)
 {
 case 133:
   tui_scroll_forward (win_info, 0);
   break;
 case 132:
   tui_scroll_backward (win_info, 0);
   break;
 case 135:
 case 130:
   tui_scroll_forward (win_info, 1);
   break;
 case 128:
 case 129:
   tui_scroll_backward (win_info, 1);
   break;
 case 131:
   tui_scroll_left (win_info, 1);
   break;
 case 134:
   tui_scroll_right (win_info, 1);
   break;
 case '\f':
   tui_refresh_all_win ();
   break;
 default:
   c = ch_copy;
   break;
 }
      return c;
    }
}
