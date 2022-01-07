
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int serial_show_cmdlist ;

__attribute__((used)) static void
serial_show_cmd (char *args, int from_tty)
{
  cmd_show_list (serial_show_cmdlist, from_tty, "");
}
