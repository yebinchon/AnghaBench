
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;



__attribute__((used)) static int
au_spacetobytes(size_t *bytes, u_long value, char mult)
{
 if (((void*)0) == bytes)
  return (-1);

 switch(mult) {
 case 'B':
 case ' ':

  *bytes = (size_t)value;
  break;

 case 'K':

  *bytes = (size_t)value * 1024;
  break;

 case 'M':

  *bytes = (size_t)value * 1024 * 1024;
  break;

 case 'G':

  *bytes = (size_t)value * 1024 * 1024 * 1024;
  break;

 default:
  return (-1);
 }
 return (0);
}
