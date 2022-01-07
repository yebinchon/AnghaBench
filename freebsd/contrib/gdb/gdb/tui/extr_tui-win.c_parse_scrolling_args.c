
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct TYPE_4__ {scalar_t__* list; } ;


 struct tui_win_info* TUI_CMD_WIN ;
 int atoi (char*) ;
 scalar_t__ isdigit (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char toupper (char) ;
 struct tui_win_info* tui_partial_win_by_name (char*) ;
 TYPE_2__* tui_source_windows () ;
 struct tui_win_info* tui_win_with_focus () ;
 int warning (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
parse_scrolling_args (char *arg, struct tui_win_info * * win_to_scroll,
        int *num_to_scroll)
{
  if (num_to_scroll)
    *num_to_scroll = 0;
  *win_to_scroll = tui_win_with_focus ();





  if (arg != (char *) ((void*)0))
    {
      char *buf, *buf_ptr;


      buf = buf_ptr = xstrdup (arg);
      if (isdigit (*buf_ptr))
 {
   char *num_str;

   num_str = buf_ptr;
   buf_ptr = strchr (buf_ptr, ' ');
   if (buf_ptr != (char *) ((void*)0))
     {
       *buf_ptr = (char) 0;
       if (num_to_scroll)
  *num_to_scroll = atoi (num_str);
       buf_ptr++;
     }
   else if (num_to_scroll)
     *num_to_scroll = atoi (num_str);
 }


      if (buf_ptr != (char *) ((void*)0))
 {
   char *wname;
   int i;

   if (*buf_ptr == ' ')
     while (*(++buf_ptr) == ' ')
       ;

   if (*buf_ptr != (char) 0)
     wname = buf_ptr;
   else
     wname = "?";


   for (i = 0; i < strlen (wname); i++)
     wname[i] = toupper (wname[i]);
   *win_to_scroll = tui_partial_win_by_name (wname);

   if (*win_to_scroll == (struct tui_win_info *) ((void*)0) ||
       !(*win_to_scroll)->generic.is_visible)
     warning ("Invalid window specified. \nThe window name specified must be valid and visible.\n");

   else if (*win_to_scroll == TUI_CMD_WIN)
     *win_to_scroll = (struct tui_win_info *) (tui_source_windows ())->list[0];
 }
      xfree (buf);
    }
}
