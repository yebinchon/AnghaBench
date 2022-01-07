
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * le_prev; } ;
struct callout {int * c_arg; int * c_func; TYPE_1__ entry; } ;


 int LIST_REMOVE (struct callout*,int ) ;
 int entry ;
 int mtx_callout ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
callout_stop(struct callout *c)
{
 mtx_lock(&mtx_callout);

 if (c->entry.le_prev != ((void*)0)) {
  LIST_REMOVE(c, entry);
  c->entry.le_prev = ((void*)0);
 }
 mtx_unlock(&mtx_callout);

 c->c_func = ((void*)0);
 c->c_arg = ((void*)0);
}
