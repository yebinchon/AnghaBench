
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current; scalar_t__ used; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int ISC__BUFFER_SETACTIVE (TYPE_1__*,unsigned int) ;
 int REQUIRE (int) ;

void
isc__buffer_setactive(isc_buffer_t *b, unsigned int n) {




 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->current + n <= b->used);

 ISC__BUFFER_SETACTIVE(b, n);
}
