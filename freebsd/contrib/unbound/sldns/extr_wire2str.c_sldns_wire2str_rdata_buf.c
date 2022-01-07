
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int sldns_wire2str_rdata_scan (int **,size_t*,char**,size_t*,int ,int *,int ) ;

int sldns_wire2str_rdata_buf(uint8_t* rdata, size_t rdata_len, char* str,
 size_t str_len, uint16_t rrtype)
{

 return sldns_wire2str_rdata_scan(&rdata, &rdata_len, &str, &str_len,
  rrtype, ((void*)0), 0);
}
