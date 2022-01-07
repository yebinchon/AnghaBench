
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_uint8_t ;
struct TYPE_5__ {scalar_t__ used; scalar_t__ length; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int ISC__BUFFER_PUTUINT8 (TYPE_1__*,int ) ;
 int REQUIRE (int) ;

void
isc__buffer_putuint8(isc_buffer_t *b, isc_uint8_t val) {
 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->used + 1 <= b->length);

 ISC__BUFFER_PUTUINT8(b, val);
}
