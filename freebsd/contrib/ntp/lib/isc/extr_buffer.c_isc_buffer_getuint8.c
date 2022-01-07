
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ isc_uint8_t ;
struct TYPE_5__ {int used; int current; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int) ;
 unsigned char* isc_buffer_current (TYPE_1__*) ;

isc_uint8_t
isc_buffer_getuint8(isc_buffer_t *b) {
 unsigned char *cp;
 isc_uint8_t result;





 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->used - b->current >= 1);

 cp = isc_buffer_current(b);
 b->current += 1;
 result = ((isc_uint8_t)(cp[0]));

 return (result);
}
