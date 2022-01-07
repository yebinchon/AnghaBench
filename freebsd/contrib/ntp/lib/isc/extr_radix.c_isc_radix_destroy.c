
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mctx; } ;
typedef TYPE_1__ isc_radix_tree_t ;
typedef int isc_radix_destroyfunc_t ;


 int REQUIRE (int ) ;
 int _clear_radix (TYPE_1__*,int ) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;

void
isc_radix_destroy(isc_radix_tree_t *radix, isc_radix_destroyfunc_t func)
{
 REQUIRE(radix != ((void*)0));
 _clear_radix(radix, func);
 isc_mem_put(radix->mctx, radix, sizeof(*radix));
}
