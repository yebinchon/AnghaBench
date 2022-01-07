
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_portset_t ;
typedef int isc_mem_t ;


 int REQUIRE (int ) ;
 int isc_mem_put (int *,int *,int) ;

void
isc_portset_destroy(isc_mem_t *mctx, isc_portset_t **portsetp) {
 isc_portset_t *portset;

 REQUIRE(portsetp != ((void*)0));
 portset = *portsetp;

 isc_mem_put(mctx, portset, sizeof(*portset));
}
