
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;



__attribute__((used)) static void
cpy_pad_spaces(Char *dst, Char *src, int width)
{
    int i;

    for (i = 0; i < width; i++) {
 if (*src == (Char) 0)
     break;
 *dst++ = *src++;
    }

    while (i < width) {
 *dst++ = ' ';
 i++;
    }
    *dst = (Char) 0;
}
