
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int isc_uint16_t ;
struct TYPE_5__ {int used; int current; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int) ;
 unsigned char* isc_buffer_current (TYPE_1__*) ;

isc_uint16_t
isc_buffer_getuint16(isc_buffer_t *b) {
 unsigned char *cp;
 isc_uint16_t result;






 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->used - b->current >= 2);

 cp = isc_buffer_current(b);
 b->current += 2;
 result = ((unsigned int)(cp[0])) << 8;
 result |= ((unsigned int)(cp[1]));

 return (result);
}
