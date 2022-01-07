
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ malloc (size_t) ;
 int sldns_wire2str_pkt_buf (int *,size_t,char*,size_t) ;

char* sldns_wire2str_pkt(uint8_t* data, size_t len)
{
 size_t slen = (size_t)sldns_wire2str_pkt_buf(data, len, ((void*)0), 0);
 char* result = (char*)malloc(slen+1);
 if(!result) return ((void*)0);
 sldns_wire2str_pkt_buf(data, len, result, slen+1);
 return result;
}
