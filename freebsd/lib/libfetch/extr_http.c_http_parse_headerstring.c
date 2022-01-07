
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
http_parse_headerstring(const char *cp, char *obuf)
{
 for (;;) {
  switch (*cp) {
  case 0:
   *obuf = 0;
   return (((void*)0));
  case '"':
   *obuf = 0;
   return (++cp);
  case '\\':
   if (*++cp == 0) {
    *obuf = 0;
    return (((void*)0));
   }

  default:
   *obuf++ = *cp++;
  }
 }
}
