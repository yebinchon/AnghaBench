
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lsb0; scalar_t__ size; scalar_t__ length; int * data; scalar_t__ magic; } ;
typedef TYPE_1__ isc_bitstring_t ;


 int ISC_FALSE ;
 int REQUIRE (int ) ;
 int VALID_BITSTRING (TYPE_1__*) ;

void
isc_bitstring_invalidate(isc_bitstring_t *bitstring) {





 REQUIRE(VALID_BITSTRING(bitstring));

 bitstring->magic = 0;
 bitstring->data = ((void*)0);
 bitstring->length = 0;
 bitstring->size = 0;
 bitstring->lsb0 = ISC_FALSE;
}
