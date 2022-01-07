
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int H_NEXT_STR ;
 int H_PREV_STR ;
 int h ;
 int history (int ,int *,int ,char const*) ;

int
history_search_prefix(const char *str, int direction)
{
 HistEvent ev;

 return (history(h, &ev, direction < 0 ?
     H_PREV_STR : H_NEXT_STR, str));
}
