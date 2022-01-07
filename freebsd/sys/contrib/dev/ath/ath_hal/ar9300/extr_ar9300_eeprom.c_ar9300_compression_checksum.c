
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int16_t ;



u_int16_t
ar9300_compression_checksum(u_int8_t *data, int dsize)
{
    int it;
    int checksum = 0;

    for (it = 0; it < dsize; it++) {
        checksum += data[it];
        checksum &= 0xffff;
    }

    return checksum;
}
