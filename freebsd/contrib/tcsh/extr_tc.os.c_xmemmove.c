
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
xmemmove(void *vdst, const void *vsrc, size_t len)
{
    const char *src = vsrc;
    char *dst = vdst;

    if (src == dst)
 return vdst;

    if (src > dst) {
 while (len--)
     *dst++ = *src++;
    }
    else {
 src += len;
 dst += len;
 while (len--)
     *--dst = *--src;
    }
    return vdst;
}
