
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verify_crc10_table ;
typedef int uint16_t ;


 int CRC10_POLYNOMIAL ;
 int assert (int) ;
 int crc10_table ;
 scalar_t__ memcmp (int*,int ,int) ;

__attribute__((used)) static void
init_crc10_table(void)
{

    register int i, j;
    register uint16_t accum;
    uint16_t verify_crc10_table[256];

    for ( i = 0; i < 256; i++ )
    {
        accum = ((unsigned short) i << 2);
        for ( j = 0; j < 8; j++ )
        {
            if ((accum <<= 1) & 0x400) accum ^= 0x633;
        }
        verify_crc10_table[i] = accum;
    }
    assert(memcmp(verify_crc10_table,
      crc10_table,
      sizeof(verify_crc10_table)) == 0);

}
