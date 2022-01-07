
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sldns_wire2str_rcode_print (char**,size_t*,int) ;

int sldns_wire2str_rcode_buf(int rcode, char* s, size_t slen)
{

 return sldns_wire2str_rcode_print(&s, &slen, rcode);
}
