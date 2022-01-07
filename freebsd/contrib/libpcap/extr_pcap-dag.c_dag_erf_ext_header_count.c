
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static unsigned int
dag_erf_ext_header_count(uint8_t * erf, size_t len)
{
 uint32_t hdr_num = 0;
 uint8_t hdr_type;


 if ( erf == ((void*)0) )
  return 0;
 if ( len < 16 )
  return 0;


 if ( (erf[8] & 0x80) == 0x00 )
  return 0;


 do {


  if ( len < (24 + (hdr_num * 8)) )
   return hdr_num;


  hdr_type = erf[(16 + (hdr_num * 8))];
  hdr_num++;

 } while ( hdr_type & 0x80 );

 return hdr_num;
}
