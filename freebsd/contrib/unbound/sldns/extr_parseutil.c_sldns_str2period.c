
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
sldns_str2period(const char *nptr, const char **endptr)
{
 int sign = 0;
 uint32_t i = 0;
 uint32_t seconds = 0;

 for(*endptr = nptr; **endptr; (*endptr)++) {
  switch (**endptr) {
   case ' ':
   case '\t':
    break;
   case '-':
    if(sign == 0) {
     sign = -1;
    } else {
     return seconds;
    }
    break;
   case '+':
    if(sign == 0) {
     sign = 1;
    } else {
     return seconds;
    }
    break;
   case 's':
   case 'S':
    seconds += i;
    i = 0;
    break;
   case 'm':
   case 'M':
    seconds += i * 60;
    i = 0;
    break;
   case 'h':
   case 'H':
    seconds += i * 60 * 60;
    i = 0;
    break;
   case 'd':
   case 'D':
    seconds += i * 60 * 60 * 24;
    i = 0;
    break;
   case 'w':
   case 'W':
    seconds += i * 60 * 60 * 24 * 7;
    i = 0;
    break;
   case '0':
   case '1':
   case '2':
   case '3':
   case '4':
   case '5':
   case '6':
   case '7':
   case '8':
   case '9':
    i *= 10;
    i += (**endptr - '0');
    break;
   default:
    seconds += i;

    return seconds;
  }
 }
 seconds += i;

 return seconds;
}
