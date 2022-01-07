
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int str; } ;
typedef TYPE_1__ HistEvent ;


 int H_CURR ;
 int H_NEXT ;
 int H_NEXT_EVENT ;
 int H_PREV ;
 int H_PREV_EVENT ;
 int h ;
 int history (int ,TYPE_1__*,int ,...) ;
 int history_set_pos (int) ;
 scalar_t__ strstr (int ,char const*) ;

int
history_search_pos(const char *str,
     int direction __attribute__((__unused__)), int pos)
{
 HistEvent ev;
 int curr_num, off;

 off = (pos > 0) ? pos : -pos;
 pos = (pos > 0) ? 1 : -1;

 if (history(h, &ev, H_CURR) != 0)
  return -1;
 curr_num = ev.num;

 if (!history_set_pos(off) || history(h, &ev, H_CURR) != 0)
  return -1;

 for (;;) {
  if (strstr(ev.str, str))
   return off;
  if (history(h, &ev, (pos < 0) ? H_PREV : H_NEXT) != 0)
   break;
 }


 (void)history(h, &ev,
     pos < 0 ? H_NEXT_EVENT : H_PREV_EVENT, curr_num);

 return -1;
}
