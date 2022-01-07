
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int set_screen_size () ;
 int set_width () ;

__attribute__((used)) static void
set_width_command (char *args, int from_tty, struct cmd_list_element *c)
{
  set_screen_size ();
  set_width ();
}
