
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * le_prev; } ;
struct callout {int flags; int * mtx; int c_arg; int (* c_func ) (int ) ;TYPE_1__ entry; } ;


 int CALLOUT_RETURNUNLOCKED ;
 int LIST_REMOVE (struct callout*,int ) ;
 int entry ;
 int mtx_callout ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void
callout_callback(struct callout *c)
{
 mtx_lock(c->mtx);

 mtx_lock(&mtx_callout);
 if (c->entry.le_prev != ((void*)0)) {
  LIST_REMOVE(c, entry);
  c->entry.le_prev = ((void*)0);
 }
 mtx_unlock(&mtx_callout);

 if (c->c_func != ((void*)0))
  (c->c_func) (c->c_arg);

 if (!(c->flags & CALLOUT_RETURNUNLOCKED))
  mtx_unlock(c->mtx);
}
