
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* xre_format; struct TYPE_3__* xre_next; } ;
typedef TYPE_1__ xo_retain_entry_t ;
struct TYPE_4__ {TYPE_1__** xr_bucket; } ;


 TYPE_2__ xo_retain ;
 int xo_retain_count ;
 unsigned int xo_retain_hash (char const*) ;

void
xo_retain_clear (const char *fmt)
{
    xo_retain_entry_t **xrepp;
    unsigned hash = xo_retain_hash(fmt);

    for (xrepp = &xo_retain.xr_bucket[hash]; *xrepp;
  xrepp = &(*xrepp)->xre_next) {
 if ((*xrepp)->xre_format == fmt) {
     *xrepp = (*xrepp)->xre_next;
     xo_retain_count -= 1;
     return;
 }
    }
}
