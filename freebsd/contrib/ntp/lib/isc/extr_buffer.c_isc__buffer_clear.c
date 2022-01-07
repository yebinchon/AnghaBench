
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_buffer_t ;


 int ISC_BUFFER_VALID (int *) ;
 int ISC__BUFFER_CLEAR (int *) ;
 int REQUIRE (int ) ;

void
isc__buffer_clear(isc_buffer_t *b) {




 REQUIRE(ISC_BUFFER_VALID(b));

 ISC__BUFFER_CLEAR(b);
}
