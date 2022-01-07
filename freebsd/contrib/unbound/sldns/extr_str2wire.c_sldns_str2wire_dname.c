
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int dname ;


 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ malloc (size_t) ;
 int * memcpy (int *,int *,size_t) ;
 scalar_t__ sldns_str2wire_dname_buf (char const*,int *,size_t*) ;

uint8_t* sldns_str2wire_dname(const char* str, size_t* len)
{
 uint8_t dname[LDNS_MAX_DOMAINLEN+1];
 *len = sizeof(dname);
 if(sldns_str2wire_dname_buf(str, dname, len) == 0) {
  uint8_t* r = (uint8_t*)malloc(*len);
  if(r) return memcpy(r, dname, *len);
 }
 *len = 0;
 return ((void*)0);
}
