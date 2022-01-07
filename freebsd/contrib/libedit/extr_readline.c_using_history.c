
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 int * h ;
 int history_length ;
 int history_offset ;
 int rl_initialize () ;

void
using_history(void)
{
 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();
 history_offset = history_length;
}
