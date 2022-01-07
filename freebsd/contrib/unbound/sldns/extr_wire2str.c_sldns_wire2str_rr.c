
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ malloc (size_t) ;
 int sldns_wire2str_rr_buf (int *,size_t,char*,size_t) ;

char* sldns_wire2str_rr(uint8_t* rr, size_t len)
{
 size_t slen = (size_t)sldns_wire2str_rr_buf(rr, len, ((void*)0), 0);
 char* result = (char*)malloc(slen+1);
 if(!result) return ((void*)0);
 sldns_wire2str_rr_buf(rr, len, result, slen+1);
 return result;
}
