
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int H_SETSIZE ;
 int INT_MAX ;
 int h ;
 int history (int ,int *,int ,int) ;
 int max_input_history ;

int
unstifle_history(void)
{
 HistEvent ev;
 int omax;

 history(h, &ev, H_SETSIZE, INT_MAX);
 omax = max_input_history;
 max_input_history = INT_MAX;
 return omax;
}
