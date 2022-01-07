
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int buff ;



const char *
tar_i64toa(int64_t n0)
{
 static char buff[24];
 uint64_t n = n0 < 0 ? -n0 : n0;
 char *p = buff + sizeof(buff);

 *--p = '\0';
 do {
  *--p = '0' + (int)(n % 10);
 } while (n /= 10);
 if (n0 < 0)
  *--p = '-';
 return p;
}
