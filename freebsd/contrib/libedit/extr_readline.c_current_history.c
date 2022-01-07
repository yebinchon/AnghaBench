
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * data; int line; } ;
struct TYPE_6__ {int str; } ;
typedef TYPE_1__ HistEvent ;
typedef TYPE_2__ HIST_ENTRY ;


 int H_PREV_EVENT ;
 int h ;
 scalar_t__ history (int ,TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ history_offset ;
 TYPE_2__ rl_he ;

HIST_ENTRY *
current_history(void)
{
 HistEvent ev;

 if (history(h, &ev, H_PREV_EVENT, history_offset + 1) != 0)
  return ((void*)0);

 rl_he.line = ev.str;
 rl_he.data = ((void*)0);
 return &rl_he;
}
