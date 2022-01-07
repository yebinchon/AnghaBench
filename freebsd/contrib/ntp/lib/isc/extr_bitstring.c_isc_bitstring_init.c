
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_3__ {unsigned char* data; unsigned int length; unsigned int size; int lsb0; int magic; } ;
typedef TYPE_1__ isc_bitstring_t ;


 int BITSTRING_MAGIC ;
 int REQUIRE (int) ;

void
isc_bitstring_init(isc_bitstring_t *bitstring, unsigned char *data,
     unsigned int length, unsigned int size, isc_boolean_t lsb0)
{







 REQUIRE(bitstring != ((void*)0));
 REQUIRE(data != ((void*)0));
 REQUIRE(length <= size);

 bitstring->magic = BITSTRING_MAGIC;
 bitstring->data = data;
 bitstring->length = length;
 bitstring->size = size;
 bitstring->lsb0 = lsb0;
}
