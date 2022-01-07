
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int atoint (char*,long*) ;
 int hextoint (char*,int *) ;
 int octtoint (char*,int *) ;

int
decodeint(
 char *str,
 long *val
 )
{
 if (*str == '0') {
  if (*(str+1) == 'x' || *(str+1) == 'X')
      return hextoint(str+2, (u_long *)val);
  return octtoint(str, (u_long *)val);
 }
 return atoint(str, val);
}
