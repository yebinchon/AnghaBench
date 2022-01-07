
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nports; } ;
typedef TYPE_1__ isc_portset_t ;


 int REQUIRE (int ) ;

unsigned int
isc_portset_nports(isc_portset_t *portset) {
 REQUIRE(portset != ((void*)0));

 return (portset->nports);
}
