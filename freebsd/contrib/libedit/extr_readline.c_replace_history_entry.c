
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int histdata_t ;
struct TYPE_8__ {int * line; int data; } ;
struct TYPE_7__ {int num; int str; } ;
typedef TYPE_1__ HistEvent ;
typedef TYPE_2__ HIST_ENTRY ;


 int H_CURR ;
 int H_LAST ;
 int H_NEXT_EVDATA ;
 int H_REPLACE ;
 int H_SET ;
 int * e ;
 int el_free (TYPE_2__*) ;
 TYPE_2__* el_malloc (int) ;
 int * h ;
 scalar_t__ history (int *,TYPE_1__*,int ,...) ;
 int rl_initialize () ;
 int * strdup (int ) ;

HIST_ENTRY *
replace_history_entry(int num, const char *line, histdata_t data)
{
 HIST_ENTRY *he;
 HistEvent ev;
 int curr_num;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();


 if (history(h, &ev, H_CURR) != 0)
  return ((void*)0);
 curr_num = ev.num;


 if (history(h, &ev, H_LAST) != 0)
  return ((void*)0);

 if ((he = el_malloc(sizeof(*he))) == ((void*)0))
  return ((void*)0);


 if (history(h, &ev, H_NEXT_EVDATA, num, &he->data))
  goto out;

 he->line = strdup(ev.str);
 if (he->line == ((void*)0))
  goto out;

 if (history(h, &ev, H_REPLACE, line, data))
  goto out;


 if (history(h, &ev, H_SET, curr_num))
  goto out;

 return he;
out:
 el_free(he);
 return ((void*)0);
}
