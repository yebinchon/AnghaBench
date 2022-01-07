
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int d ;


 int sldns_wire2str_type_buf (int ,char*,int) ;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static void
pretty_type(char* s, size_t len, int t)
{
 char d[16];
 sldns_wire2str_type_buf((uint16_t)t, d, sizeof(d));
 snprintf(s, len, "%s", d);
}
