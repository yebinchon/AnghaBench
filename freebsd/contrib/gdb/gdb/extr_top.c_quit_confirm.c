
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ attach_flag ;
 int inferior_ptid ;
 scalar_t__ init_ui_hook ;
 int null_ptid ;
 int ptid_equal (int ,int ) ;
 int query (char*,char*) ;
 scalar_t__ target_has_execution ;

int
quit_confirm (void)
{
  if (! ptid_equal (inferior_ptid, null_ptid) && target_has_execution)
    {
      char *s;




      if (init_ui_hook)
 s = "A debugging session is active.\nDo you still want to close the debugger?";
      else if (attach_flag)
 s = "The program is running.  Quit anyway (and detach it)? ";
      else
 s = "The program is running.  Exit anyway? ";

      if (!query ("%s", s))
 return 0;
    }

  return 1;
}
