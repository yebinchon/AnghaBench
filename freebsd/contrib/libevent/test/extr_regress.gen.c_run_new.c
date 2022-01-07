
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int dummy; } ;


 struct run* run_new_with_arg (int *) ;

struct run *
run_new(void)
{
  return run_new_with_arg(((void*)0));
}
