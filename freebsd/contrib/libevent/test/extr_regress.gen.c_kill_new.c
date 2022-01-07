
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int dummy; } ;


 struct kill* kill_new_with_arg (int *) ;

struct kill *
kill_new(void)
{
  return kill_new_with_arg(((void*)0));
}
