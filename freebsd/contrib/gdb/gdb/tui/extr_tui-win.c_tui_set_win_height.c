
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ TUI_FAILURE ;
 int WIN_HEIGHT_USAGE ;
 int atoi (char*) ;
 int printf_filtered (int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char toupper (char) ;
 scalar_t__ tui_adjust_win_heights (struct tui_win_info*,int) ;
 int tui_enable () ;
 struct tui_win_info* tui_partial_win_by_name (char*) ;
 int tui_update_gdb_sizes () ;
 int warning (char*,...) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
tui_set_win_height (char *arg, int from_tty)
{

  tui_enable ();
  if (arg != (char *) ((void*)0))
    {
      char *buf = xstrdup (arg);
      char *buf_ptr = buf;
      char *wname = (char *) ((void*)0);
      int new_height, i;
      struct tui_win_info * win_info;

      wname = buf_ptr;
      buf_ptr = strchr (buf_ptr, ' ');
      if (buf_ptr != (char *) ((void*)0))
 {
   *buf_ptr = (char) 0;




   for (i = 0; i < strlen (wname); i++)
     wname[i] = toupper (wname[i]);
   win_info = tui_partial_win_by_name (wname);

   if (win_info == (struct tui_win_info *) ((void*)0) || !win_info->generic.is_visible)
     warning ("Invalid window specified. \nThe window name specified must be valid and visible.\n");

   else
     {

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
    input_no = atoi (buf_ptr);
    if (input_no > 0)
      {
        if (negate)
   input_no *= (-1);
        if (fixed_size)
   new_height = input_no;
        else
   new_height = win_info->generic.height + input_no;




        if (tui_adjust_win_heights (win_info,
      new_height) == TUI_FAILURE)
   warning ("Invalid window height specified.\n%s",
     WIN_HEIGHT_USAGE);
        else
                        tui_update_gdb_sizes ();
      }
    else
      warning ("Invalid window height specified.\n%s",
        WIN_HEIGHT_USAGE);
  }
     }
 }
      else
 printf_filtered (WIN_HEIGHT_USAGE);

      if (buf != (char *) ((void*)0))
 xfree (buf);
    }
  else
    printf_filtered (WIN_HEIGHT_USAGE);
}
