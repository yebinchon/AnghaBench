
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int input_radix ;
 int set_input_radix_1 (int,int ) ;

__attribute__((used)) static void
set_input_radix (char *args, int from_tty, struct cmd_list_element *c)
{
  set_input_radix_1 (from_tty, input_radix);
}
