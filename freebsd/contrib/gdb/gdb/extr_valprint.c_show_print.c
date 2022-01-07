
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int showprintlist ;

__attribute__((used)) static void
show_print (char *args, int from_tty)
{
  cmd_show_list (showprintlist, from_tty, "");
}
