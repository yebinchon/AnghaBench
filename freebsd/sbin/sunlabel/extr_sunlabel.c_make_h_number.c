
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uintmax_t ;


 int sprintf (char*,char*,double) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char *
make_h_number(uintmax_t u)
{
 static char buf[32];
 double d;

 if (u == 0) {
  strcpy(buf, "0B");
 } else if (u > 2000000000UL) {
  d = (double)u / 1e9;
  sprintf(buf, "%.1fG", d);
 } else if (u > 2000000UL) {
  d = (double)u / 1e6;
  sprintf(buf, "%.1fM", d);
 } else {
  d = (double)u / 1e3;
  sprintf(buf, "%.1fK", d);
 }

 return (buf);
}
