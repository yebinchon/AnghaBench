
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int sldns_read_uint16 (int *) ;

uint16_t sldns_wirerr_get_type(uint8_t* rr, size_t len, size_t dname_len)
{
 if(len < dname_len+2)
  return 0;
 return sldns_read_uint16(rr+dname_len);
}
