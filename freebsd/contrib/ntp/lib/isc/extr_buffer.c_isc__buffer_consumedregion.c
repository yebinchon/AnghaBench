
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_region_t ;
typedef int isc_buffer_t ;


 int ISC_BUFFER_VALID (int *) ;
 int ISC__BUFFER_CONSUMEDREGION (int *,int *) ;
 int REQUIRE (int ) ;

void
isc__buffer_consumedregion(isc_buffer_t *b, isc_region_t *r) {




 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(r != ((void*)0));

 ISC__BUFFER_CONSUMEDREGION(b, r);
}
