
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int* crc_tbl ;
 int get_mirror32 (int) ;

uint32_t get_mac_addr_crc(uint64_t _addr)
{
 uint32_t i;
 uint8_t data;
 uint32_t crc;


 crc = 0xffffffff;
 for (i = 0; i < 6; i++) {
  data = (uint8_t)(_addr >> ((5-i)*8));
  crc = crc ^ data;
  crc = crc_tbl[crc&0xff] ^ (crc>>8);
 }

 crc = get_mirror32(crc);
 return crc;
}
