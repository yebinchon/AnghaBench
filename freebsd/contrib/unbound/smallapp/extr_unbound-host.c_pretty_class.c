
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int d ;


 int sldns_wire2str_class_buf (int ,char*,int) ;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static void
pretty_class(char* s, size_t len, int c)
{
 char d[16];
 sldns_wire2str_class_buf((uint16_t)c, d, sizeof(d));
 snprintf(s, len, "%s", d);
}
