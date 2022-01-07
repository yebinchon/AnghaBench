
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int buf ;


 int sldns_wire2str_class_buf (int ,char*,int) ;
 char* strdup (char*) ;

char* sldns_wire2str_class(uint16_t rrclass)
{
 char buf[16];
 sldns_wire2str_class_buf(rrclass, buf, sizeof(buf));
 return strdup(buf);
}
