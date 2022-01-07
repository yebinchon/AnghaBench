
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_suppress_run ;

__attribute__((used)) static int
fbsd_thread_can_run (void)
{
  return child_suppress_run;
}
