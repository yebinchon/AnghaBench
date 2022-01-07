
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
unicode_to_utf8(char *p, uint32_t uc)
{
        char *_p = p;


        if (uc <= 0x7f) {
                *p++ = (char)uc;
        } else if (uc <= 0x7ff) {
                *p++ = 0xc0 | ((uc >> 6) & 0x1f);
                *p++ = 0x80 | (uc & 0x3f);
        } else if (uc <= 0xffff) {
                *p++ = 0xe0 | ((uc >> 12) & 0x0f);
                *p++ = 0x80 | ((uc >> 6) & 0x3f);
                *p++ = 0x80 | (uc & 0x3f);
        } else {
                *p++ = 0xf0 | ((uc >> 18) & 0x07);
                *p++ = 0x80 | ((uc >> 12) & 0x3f);
                *p++ = 0x80 | ((uc >> 6) & 0x3f);
                *p++ = 0x80 | (uc & 0x3f);
        }
        return ((int)(p - _p));
}
