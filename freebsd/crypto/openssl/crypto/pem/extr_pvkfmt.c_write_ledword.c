
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void write_ledword(unsigned char **out, unsigned int dw)
{
    unsigned char *p = *out;
    *p++ = dw & 0xff;
    *p++ = (dw >> 8) & 0xff;
    *p++ = (dw >> 16) & 0xff;
    *p++ = (dw >> 24) & 0xff;
    *out = p;
}
