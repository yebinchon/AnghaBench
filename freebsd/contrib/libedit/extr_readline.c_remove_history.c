
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int line; int data; } ;
struct TYPE_7__ {int num; int str; } ;
typedef TYPE_1__ HistEvent ;
typedef TYPE_2__ HIST_ENTRY ;


 int H_DELDATA ;
 int H_GETSIZE ;
 int * e ;
 int el_free (TYPE_2__*) ;
 TYPE_2__* el_malloc (int) ;
 int * h ;
 scalar_t__ history (int *,TYPE_1__*,int ,...) ;
 int history_length ;
 int rl_initialize () ;

HIST_ENTRY *
remove_history(int num)
{
 HIST_ENTRY *he;
 HistEvent ev;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if ((he = el_malloc(sizeof(*he))) == ((void*)0))
  return ((void*)0);

 if (history(h, &ev, H_DELDATA, num, &he->data) != 0) {
  el_free(he);
  return ((void*)0);
 }

 he->line = ev.str;
 if (history(h, &ev, H_GETSIZE) == 0)
  history_length = ev.num;

 return he;
}
