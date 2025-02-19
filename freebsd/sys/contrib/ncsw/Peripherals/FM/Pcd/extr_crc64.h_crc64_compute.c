
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {size_t* table; } ;


 size_t CRC64_BYTE_MASK ;
 TYPE_1__ CRC64_ECMA_182 ;

__attribute__((used)) static __inline__ uint64_t crc64_compute(void const *data,
                                         uint32_t len,
                                         uint64_t seed)
{
    uint32_t i;
    uint64_t crc = seed;
    uint8_t *bdata = (uint8_t *) data;

    for (i = 0; i < len; i++)
        crc =
            CRC64_ECMA_182.
            table[(crc ^ *bdata++) & CRC64_BYTE_MASK] ^ (crc >> 8);

    return crc;
}
