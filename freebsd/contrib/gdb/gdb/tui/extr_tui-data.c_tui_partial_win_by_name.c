
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int generic; } ;


 int MAX_MAJOR_WINDOWS ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;
 struct tui_win_info** tui_win_list ;
 char* tui_win_name (int *) ;

struct tui_win_info *
tui_partial_win_by_name (char *name)
{
  struct tui_win_info * win_info = (struct tui_win_info *) ((void*)0);

  if (name != (char *) ((void*)0))
    {
      int i = 0;

      while (i < MAX_MAJOR_WINDOWS && win_info == ((void*)0))
 {
          if (tui_win_list[i] != 0)
            {
              char *cur_name = tui_win_name (&tui_win_list[i]->generic);
              if (strlen (name) <= strlen (cur_name) &&
                  strncmp (name, cur_name, strlen (name)) == 0)
                win_info = tui_win_list[i];
            }
   i++;
 }
    }

  return win_info;
}
