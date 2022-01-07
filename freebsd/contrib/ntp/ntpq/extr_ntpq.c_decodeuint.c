
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int atouint (char*,int *) ;
 int hextoint (char*,int *) ;
 int octtoint (char*,int *) ;

int
decodeuint(
 char *str,
 u_long *val
 )
{
 if (*str == '0') {
  if (*(str + 1) == 'x' || *(str + 1) == 'X')
   return (hextoint(str + 2, val));
  return (octtoint(str, val));
 }
 return (atouint(str, val));
}
