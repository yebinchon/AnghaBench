
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;
typedef int HIST_ENTRY ;


 int H_LAST ;
 int * current_history () ;
 int h ;
 scalar_t__ history (int ,int *,int ) ;
 scalar_t__ history_offset ;

HIST_ENTRY *
previous_history(void)
{
 HistEvent ev;

 if (history_offset == 0)
  return ((void*)0);

 if (history(h, &ev, H_LAST) != 0)
  return ((void*)0);

 history_offset--;
 return current_history();
}
