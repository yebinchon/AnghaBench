
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_wire2str_rr_unknown_scan (int **,size_t*,char**,size_t*,int *,int ) ;

int sldns_wire2str_rr_unknown_buf(uint8_t* d, size_t dlen, char* s, size_t slen)
{

 return sldns_wire2str_rr_unknown_scan(&d, &dlen, &s, &slen, ((void*)0), 0);
}
