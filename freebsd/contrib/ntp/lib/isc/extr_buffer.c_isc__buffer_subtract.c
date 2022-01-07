
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int used; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int ISC__BUFFER_SUBTRACT (TYPE_1__*,unsigned int) ;
 int REQUIRE (int) ;

void
isc__buffer_subtract(isc_buffer_t *b, unsigned int n) {




 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->used >= n);

 ISC__BUFFER_SUBTRACT(b, n);
}
