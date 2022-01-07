
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
openpam_strlcat(char *dst, const char *src, size_t size)
{
 size_t len;

 for (len = 0; *dst && size > 1; ++len, --size)
  dst++;
 for (; *src && size > 1; ++len, --size)
  *dst++ = *src++;
 *dst = '\0';
 while (*src)
  ++len, ++src;
 return (len);
}
