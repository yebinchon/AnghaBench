
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* xre_format; unsigned int xre_num_fields; int xre_hits; int * xre_fields; struct TYPE_3__* xre_next; } ;
typedef TYPE_1__ xo_retain_entry_t ;
typedef int xo_field_info_t ;
struct TYPE_4__ {TYPE_1__** xr_bucket; } ;


 TYPE_2__ xo_retain ;
 scalar_t__ xo_retain_count ;
 unsigned int xo_retain_hash (char const*) ;

__attribute__((used)) static int
xo_retain_find (const char *fmt, xo_field_info_t **valp, unsigned *nump)
{
    if (xo_retain_count == 0)
 return -1;

    unsigned hash = xo_retain_hash(fmt);
    xo_retain_entry_t *xrep;

    for (xrep = xo_retain.xr_bucket[hash]; xrep != ((void*)0);
  xrep = xrep->xre_next) {
 if (xrep->xre_format == fmt) {
     *valp = xrep->xre_fields;
     *nump = xrep->xre_num_fields;
     xrep->xre_hits += 1;
     return 0;
 }
    }

    return -1;
}
