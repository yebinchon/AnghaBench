
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 char* digits ;

__attribute__((used)) static char *
__ultoa(char *buf, u_long ul, int base)
{
 char *p;

 p = buf;
 *p = '\0';
 do
  *--p = digits[ul % base];
 while ((ul /= base) != 0);
 return (p);
}
