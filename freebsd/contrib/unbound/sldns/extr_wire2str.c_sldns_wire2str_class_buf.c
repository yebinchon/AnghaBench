
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int sldns_wire2str_class_print (char**,size_t*,int ) ;

int sldns_wire2str_class_buf(uint16_t rrclass, char* s, size_t slen)
{

 return sldns_wire2str_class_print(&s, &slen, rrclass);
}
