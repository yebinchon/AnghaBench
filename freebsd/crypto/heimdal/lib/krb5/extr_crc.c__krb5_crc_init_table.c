
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CRC_GEN ;
 unsigned long* table ;

void
_krb5_crc_init_table(void)
{
    static int flag = 0;
    unsigned long crc, poly;
    unsigned int i, j;

    if(flag) return;
    poly = CRC_GEN;
    for (i = 0; i < 256; i++) {
 crc = i;
 for (j = 8; j > 0; j--) {
     if (crc & 1) {
  crc = (crc >> 1) ^ poly;
     } else {
  crc >>= 1;
     }
 }
 table[i] = crc;
    }
    flag = 1;
}
