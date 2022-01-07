
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
ugen20_path_convert_one(const char **pp)
{
 const char *ptr;
 uint32_t temp = 0;

 ptr = *pp;

 while ((*ptr >= '0') && (*ptr <= '9')) {
  temp *= 10;
  temp += (*ptr - '0');
  if (temp >= 1000000) {

   return (0xFFFFFFFF);
  }
  ptr++;
 }

 if (*ptr == '.') {

  ptr++;
 }
 *pp = ptr;

 return (temp);
}
