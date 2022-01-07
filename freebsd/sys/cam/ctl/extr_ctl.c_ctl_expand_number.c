
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 unsigned int strtoq (char const*,char**,int ) ;
 int tolower (unsigned char) ;

int
ctl_expand_number(const char *buf, uint64_t *num)
{
 char *endptr;
 uint64_t number;
 unsigned shift;

 number = strtoq(buf, &endptr, 0);

 switch (tolower((unsigned char)*endptr)) {
 case 'e':
  shift = 60;
  break;
 case 'p':
  shift = 50;
  break;
 case 't':
  shift = 40;
  break;
 case 'g':
  shift = 30;
  break;
 case 'm':
  shift = 20;
  break;
 case 'k':
  shift = 10;
  break;
 case 'b':
 case '\0':
  *num = number;
  return (0);
 default:

  return (-1);
 }

 if ((number << shift) >> shift != number) {

  return (-1);
 }
 *num = number << shift;
 return (0);
}
