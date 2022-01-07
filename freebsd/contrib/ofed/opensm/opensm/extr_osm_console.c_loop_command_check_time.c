
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ previous; scalar_t__ delay_s; } ;


 TYPE_1__ loop_command ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int loop_command_check_time(void)
{
 time_t cur = time(((void*)0));
 if ((loop_command.previous + loop_command.delay_s) < cur) {
  loop_command.previous = cur;
  return 1;
 }
 return 0;
}
