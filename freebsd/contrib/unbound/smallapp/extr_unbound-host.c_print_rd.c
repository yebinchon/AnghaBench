
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int s ;


 int printf (char*,char*) ;
 int sldns_wire2str_rdata_buf (int *,size_t,char*,int,int ) ;

__attribute__((used)) static void
print_rd(int t, char* data, size_t len)
{
 char s[65535];
 sldns_wire2str_rdata_buf((uint8_t*)data, len, s, sizeof(s), (uint16_t)t);
 printf(" %s", s);
}
