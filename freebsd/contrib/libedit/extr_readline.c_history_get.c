
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int line; int data; } ;
struct TYPE_5__ {int num; int str; } ;
typedef TYPE_1__ HistEvent ;
typedef TYPE_2__ HIST_ENTRY ;


 int H_CURR ;
 int H_DELDATA ;
 int H_NEXT_EVDATA ;
 int H_SET ;
 int * e ;
 int * h ;
 scalar_t__ history (int *,TYPE_1__*,int ,...) ;
 int history_base ;
 int rl_initialize () ;

HIST_ENTRY *
history_get(int num)
{
 static HIST_ENTRY she;
 HistEvent ev;
 int curr_num;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (num < history_base)
  return ((void*)0);


 if (history(h, &ev, H_CURR) != 0)
  return ((void*)0);
 curr_num = ev.num;





 if (history(h, &ev, H_DELDATA, num - history_base, (void **)-1) != 0)
  goto out;


 if (history(h, &ev, H_CURR) != 0)
  goto out;
 if (history(h, &ev, H_NEXT_EVDATA, ev.num, &she.data) != 0)
  goto out;
 she.line = ev.str;


 (void)history(h, &ev, H_SET, curr_num);

 return &she;

out:

 (void)history(h, &ev, H_SET, curr_num);
 return ((void*)0);
}
