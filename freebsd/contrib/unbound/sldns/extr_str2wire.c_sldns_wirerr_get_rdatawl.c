
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t* sldns_wirerr_get_rdatawl(uint8_t* rr, size_t len, size_t dname_len)
{
 if(len < dname_len+10)
  return ((void*)0);
 return rr+dname_len+8;
}
