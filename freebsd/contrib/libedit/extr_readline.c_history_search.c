
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int str; } ;
typedef TYPE_1__ HistEvent ;


 int H_CURR ;
 int H_NEXT ;
 int H_PREV ;
 int H_SET ;
 int h ;
 int history (int ,TYPE_1__*,int ,...) ;
 char* strstr (int,char const*) ;

int
history_search(const char *str, int direction)
{
 HistEvent ev;
 const char *strp;
 int curr_num;

 if (history(h, &ev, H_CURR) != 0)
  return -1;
 curr_num = ev.num;

 for (;;) {
  if ((strp = strstr(ev.str, str)) != ((void*)0))
   return (int)(strp - ev.str);
  if (history(h, &ev, direction < 0 ? H_NEXT:H_PREV) != 0)
   break;
 }
 (void)history(h, &ev, H_SET, curr_num);
 return -1;
}
