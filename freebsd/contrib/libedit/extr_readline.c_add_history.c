
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; } ;
typedef TYPE_1__ HistEvent ;


 int H_ENTER ;
 int H_GETSIZE ;
 int * e ;
 int * h ;
 int history (int *,TYPE_1__*,int ,...) ;
 int history_base ;
 scalar_t__ history_length ;
 int history_offset ;
 int rl_initialize () ;

int
add_history(const char *line)
{
 HistEvent ev;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (history(h, &ev, H_ENTER, line) == -1)
  return 0;

 (void)history(h, &ev, H_GETSIZE);
 if (ev.num == history_length)
  history_base++;
 else {
  history_offset++;
  history_length = ev.num;
 }
 return 0;
}
