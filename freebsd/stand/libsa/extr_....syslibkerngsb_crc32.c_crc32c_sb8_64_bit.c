
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int rounddown (int,int) ;
 int* sctp_crc_tableil8_o32 ;
 int* sctp_crc_tableil8_o40 ;
 int* sctp_crc_tableil8_o48 ;
 int* sctp_crc_tableil8_o56 ;
 int* sctp_crc_tableil8_o64 ;
 int* sctp_crc_tableil8_o72 ;
 int* sctp_crc_tableil8_o80 ;
 int* sctp_crc_tableil8_o88 ;

__attribute__((used)) static uint32_t
crc32c_sb8_64_bit(uint32_t crc,
    const unsigned char *p_buf,
    uint32_t length,
    uint32_t init_bytes)
{
 uint32_t li;
 uint32_t term1, term2;
 uint32_t running_length;
 uint32_t end_bytes;

 running_length = rounddown(length - init_bytes, 8);
 end_bytes = length - init_bytes - running_length;

 for (li = 0; li < init_bytes; li++)
  crc = sctp_crc_tableil8_o32[(crc ^ *p_buf++) & 0x000000FF] ^
      (crc >> 8);
 for (li = 0; li < running_length / 8; li++) {

  crc ^= *p_buf++;
  crc ^= (*p_buf++) << 8;
  crc ^= (*p_buf++) << 16;
  crc ^= (*p_buf++) << 24;




  term1 = sctp_crc_tableil8_o88[crc & 0x000000FF] ^
      sctp_crc_tableil8_o80[(crc >> 8) & 0x000000FF];
  term2 = crc >> 16;
  crc = term1 ^
      sctp_crc_tableil8_o72[term2 & 0x000000FF] ^
      sctp_crc_tableil8_o64[(term2 >> 8) & 0x000000FF];


  crc ^= sctp_crc_tableil8_o56[*p_buf++];
  crc ^= sctp_crc_tableil8_o48[*p_buf++];
  crc ^= sctp_crc_tableil8_o40[*p_buf++];
  crc ^= sctp_crc_tableil8_o32[*p_buf++];
 }
 for (li = 0; li < end_bytes; li++)
  crc = sctp_crc_tableil8_o32[(crc ^ *p_buf++) & 0x000000FF] ^
      (crc >> 8);
 return crc;
}
