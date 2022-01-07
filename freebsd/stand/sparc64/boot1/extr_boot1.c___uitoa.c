
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 char* digits ;

__attribute__((used)) static char *
__uitoa(char *buf, u_int ui, int base)
{
 char *p;

 p = buf;
 *p = '\0';
 do
  *--p = digits[ui % base];
 while ((ui /= base) != 0);
 return (p);
}
