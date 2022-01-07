
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int sldns_wire2str_rcode_buf (int,char*,int) ;
 char* strdup (char*) ;

char* sldns_wire2str_rcode(int rcode)
{
 char buf[16];
 sldns_wire2str_rcode_buf(rcode, buf, sizeof(buf));
 return strdup(buf);
}
