
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * le_prev; } ;
struct callout {TYPE_1__ entry; } ;


 int mtx_callout ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
callout_pending(struct callout *c)
{
 int retval;

 mtx_lock(&mtx_callout);
 retval = (c->entry.le_prev != ((void*)0));
 mtx_unlock(&mtx_callout);

 return (retval);
}
