
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int isxdigit (char const) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static inline int
StrHexToBytes(const char *str, size_t len, uint8_t *buf, size_t buflen)
{
 size_t i;
 char hex[3];




 if (buflen != len / 2 || (len % 2) == 1)
  return 1;
 for (i = 0; i < len; i += 2) {
  if (!isxdigit(str[i]) || !isxdigit(str[i + 1]))
   return 1;
  hex[0] = str[i];
  hex[1] = str[i + 1];
  hex[2] = '\0';
  buf[i / 2] = strtol(hex, ((void*)0), 16);
 }
 return 0;
}
