
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int CRC16W ;
 int** crc16tbl ;

__attribute__((used)) static uint16_t
lha_crc16(uint16_t crc, const void *pp, size_t len)
{
 const unsigned char *p = (const unsigned char *)pp;
 const uint16_t *buff;
 const union {
  uint32_t i;
  char c[4];
 } u = { 0x01020304 };

 if (len == 0)
  return crc;


 if (((uintptr_t)p) & (uintptr_t)0x1) {
  crc = (crc >> 8) ^ crc16tbl[0][(crc ^ *p++) & 0xff];
  len--;
 }
 buff = (const uint16_t *)p;





 for (;len >= 8; len -= 8) {
  do { if(u.c[0] == 1) { crc ^= __builtin_bswap16(*buff); buff++; } else crc ^= *buff++; crc = crc16tbl[1][crc & 0xff] ^ crc16tbl[0][crc >> 8];} while (0);
  do { if(u.c[0] == 1) { crc ^= __builtin_bswap16(*buff); buff++; } else crc ^= *buff++; crc = crc16tbl[1][crc & 0xff] ^ crc16tbl[0][crc >> 8];} while (0);
  do { if(u.c[0] == 1) { crc ^= __builtin_bswap16(*buff); buff++; } else crc ^= *buff++; crc = crc16tbl[1][crc & 0xff] ^ crc16tbl[0][crc >> 8];} while (0);
  do { if(u.c[0] == 1) { crc ^= __builtin_bswap16(*buff); buff++; } else crc ^= *buff++; crc = crc16tbl[1][crc & 0xff] ^ crc16tbl[0][crc >> 8];} while (0);


 }

 p = (const unsigned char *)buff;
 for (;len; len--) {
  crc = (crc >> 8) ^ crc16tbl[0][(crc ^ *p++) & 0xff];
 }
 return crc;
}
