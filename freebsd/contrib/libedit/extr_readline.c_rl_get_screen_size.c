
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_GETTC ;
 int e ;
 int el_get (int ,int ,char*,int*) ;

void
rl_get_screen_size(int *rows, int *cols)
{
 if (rows)
  el_get(e, EL_GETTC, "li", rows);
 if (cols)
  el_get(e, EL_GETTC, "co", cols);
}
