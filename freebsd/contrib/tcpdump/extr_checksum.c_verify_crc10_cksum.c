
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;


 int* crc10_table ;

uint16_t
verify_crc10_cksum(uint16_t accum, const u_char *p, int length)
{
    register int i;

    for ( i = 0; i < length; i++ )
    {
        accum = ((accum << 8) & 0x3ff)
            ^ crc10_table[( accum >> 2) & 0xff]
            ^ *p++;
    }
    return accum;
}
