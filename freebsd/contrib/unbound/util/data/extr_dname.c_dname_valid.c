
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t LDNS_MAX_DOMAINLEN ;

size_t
dname_valid(uint8_t* dname, size_t maxlen)
{
 size_t len = 0;
 size_t labellen;
 labellen = *dname++;
 while(labellen) {
  if(labellen&0xc0)
   return 0;
  len += labellen + 1;
  if(len >= LDNS_MAX_DOMAINLEN)
   return 0;
  if(len > maxlen)
   return 0;
  dname += labellen;
  labellen = *dname++;
 }
 len += 1;
 if(len > maxlen)
  return 0;
 return len;
}
