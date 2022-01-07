
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;



__attribute__((used)) static void
re__copy_and_pad(wchar_t *dst, const wchar_t *src, size_t width)
{
 size_t i;

 for (i = 0; i < width; i++) {
  if (*src == '\0')
   break;
  *dst++ = *src++;
 }

 for (; i < width; i++)
  *dst++ = ' ';

 *dst = '\0';
}
