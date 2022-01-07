
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int H_CLEAR ;
 int * e ;
 int * h ;
 int history (int *,int *,int ) ;
 scalar_t__ history_length ;
 scalar_t__ history_offset ;
 int rl_initialize () ;

void
clear_history(void)
{
 HistEvent ev;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 (void)history(h, &ev, H_CLEAR);
 history_offset = history_length = 0;
}
