
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_uint8_t ;
typedef int isc_uint64_t ;
typedef int isc_sha512_t ;
struct TYPE_4__ {int * state; } ;
typedef TYPE_1__ isc_sha384_t ;


 int ISC_SHA384_DIGESTLENGTH ;
 int REQUIRE (int) ;
 int REVERSE64 (int ,int ) ;
 int isc_sha512_last (int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
isc_sha384_final(isc_uint8_t digest[], isc_sha384_t *context) {
 isc_uint64_t *d = (isc_uint64_t*)digest;


 REQUIRE(context != (isc_sha384_t *)0);


 if (digest != (isc_uint8_t*)0) {
  isc_sha512_last((isc_sha512_t *)context);



  {

   int j;
   for (j = 0; j < 6; j++) {
    REVERSE64(context->state[j],context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 memset(context, 0, sizeof(*context));
}
