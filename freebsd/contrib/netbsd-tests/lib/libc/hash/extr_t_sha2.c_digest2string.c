
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void
digest2string(const uint8_t *digest, char *string, size_t len)
{
 while (len--) {
  if (*digest / 16 < 10)
   *string++ = '0' + *digest / 16;
  else
   *string++ = 'a' + *digest / 16 - 10;
  if (*digest % 16 < 10)
   *string++ = '0' + *digest % 16;
  else
   *string++ = 'a' + *digest % 16 - 10;
  ++digest;
 }
 *string = '\0';
}
