
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_uint64_t ;
typedef int isc_int64_t ;
struct TYPE_5__ {int used; int current; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int) ;
 unsigned char* isc_buffer_current (TYPE_1__*) ;

isc_uint64_t
isc_buffer_getuint48(isc_buffer_t *b) {
 unsigned char *cp;
 isc_uint64_t result;






 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(b->used - b->current >= 6);

 cp = isc_buffer_current(b);
 b->current += 6;
 result = ((isc_int64_t)(cp[0])) << 40;
 result |= ((isc_int64_t)(cp[1])) << 32;
 result |= ((isc_int64_t)(cp[2])) << 24;
 result |= ((isc_int64_t)(cp[3])) << 16;
 result |= ((isc_int64_t)(cp[4])) << 8;
 result |= ((isc_int64_t)(cp[5]));

 return (result);
}
