
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* xre_next; } ;
typedef TYPE_1__ xo_retain_entry_t ;
struct TYPE_5__ {TYPE_1__** xr_bucket; } ;


 int RETAIN_HASH_SIZE ;
 int xo_free (TYPE_1__*) ;
 TYPE_2__ xo_retain ;
 scalar_t__ xo_retain_count ;

void
xo_retain_clear_all (void)
{
    int i;
    xo_retain_entry_t *xrep, *next;

    for (i = 0; i < RETAIN_HASH_SIZE; i++) {
 for (xrep = xo_retain.xr_bucket[i]; xrep; xrep = next) {
     next = xrep->xre_next;
     xo_free(xrep);
 }
 xo_retain.xr_bucket[i] = ((void*)0);
    }
    xo_retain_count = 0;
}
