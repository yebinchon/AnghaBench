
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int output_radix ;
 int set_output_radix_1 (int,int ) ;

__attribute__((used)) static void
set_output_radix (char *args, int from_tty, struct cmd_list_element *c)
{
  set_output_radix_1 (from_tty, output_radix);
}
