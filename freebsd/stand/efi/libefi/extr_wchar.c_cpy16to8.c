
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CHAR16 ;



void
cpy16to8(const CHAR16 *src, char *dst, size_t len)
{
 size_t i;

 for (i = 0; i < len && src[i]; i++)
  dst[i] = (char)src[i];
 if (i < len)
  dst[i] = '\0';
}
