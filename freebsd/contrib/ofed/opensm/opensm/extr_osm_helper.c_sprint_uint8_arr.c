
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ snprintf (char*,size_t,char*,char*,int const) ;

int sprint_uint8_arr(char *buf, size_t size,
       const uint8_t * arr, size_t len)
{
 int n;
 unsigned int i;
 for (i = 0, n = 0; i < len; i++) {
  n += snprintf(buf + n, size - n, "%s%u", i == 0 ? "" : ",",
         arr[i]);
  if (n >= size)
   break;
 }
 return n;
}
