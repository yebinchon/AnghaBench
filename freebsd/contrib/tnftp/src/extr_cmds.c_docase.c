
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 char tolower (unsigned char) ;

__attribute__((used)) static const char *
docase(char *dst, size_t dlen, const char *src)
{
 size_t i;
 int dochange = 1;

 for (i = 0; src[i] != '\0' && i < dlen - 1; i++) {
  dst[i] = src[i];
  if (islower((unsigned char)dst[i]))
   dochange = 0;
 }
 dst[i] = '\0';

 if (dochange) {
  for (i = 0; dst[i] != '\0'; i++)
   if (isupper((unsigned char)dst[i]))
    dst[i] = tolower((unsigned char)dst[i]);
 }
 return dst;
}
