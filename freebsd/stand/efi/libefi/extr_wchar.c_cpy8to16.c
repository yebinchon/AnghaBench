
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR16 ;



void
cpy8to16(const char *src, CHAR16 *dst, size_t len)
{
 len <<= 1;
 while (len > 0 && *src) {
  *dst++ = *src++;
  len--;
 }
 *dst++ = (CHAR16)0;
}
