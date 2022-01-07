
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef unsigned int uint64_t ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ UINT64_MAX ;
 int errno ;
 scalar_t__ strtoumax (char const*,char**,int ) ;
 int tolower (unsigned char) ;

int
expand_number(const char *buf, uint64_t *num)
{
 char *endptr;
 uintmax_t umaxval;
 uint64_t number;
 unsigned shift;
 int serrno;

 serrno = errno;
 errno = 0;
 umaxval = strtoumax(buf, &endptr, 0);
 if (umaxval > UINT64_MAX)
  errno = ERANGE;
 if (errno != 0)
  return (-1);
 errno = serrno;
 number = umaxval;

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

  errno = EINVAL;
  return (-1);
 }

 if ((number << shift) >> shift != number) {

  errno = ERANGE;
  return (-1);
 }
 *num = number << shift;
 return (0);
}
