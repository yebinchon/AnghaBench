
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int int8_t ;


 int be16toh (int ) ;

void
ata_bswap(int8_t *buf, int len)
{
 u_int16_t *ptr = (u_int16_t*)(buf + len);

 while (--ptr >= (u_int16_t*)buf)
  *ptr = be16toh(*ptr);
}
