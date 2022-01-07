
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int showhistlist ;

void
show_history (char *args, int from_tty)
{
  cmd_show_list (showhistlist, from_tty, "");
}
