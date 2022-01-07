
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8_putc (unsigned char*,int,unsigned long) ;

__attribute__((used)) static int bmp_to_utf8(char *str, const unsigned char *utf16, int len)
{
    unsigned long utf32chr;

    if (len == 0) return 0;

    if (len < 2) return -1;


    utf32chr = (utf16[0]<<8) | utf16[1];

    if (utf32chr >= 0xD800 && utf32chr < 0xE000) {
        unsigned int lo;

        if (len < 4) return -1;

        utf32chr -= 0xD800;
        utf32chr <<= 10;
        lo = (utf16[2]<<8) | utf16[3];
        if (lo < 0xDC00 || lo >= 0xE000) return -1;
        utf32chr |= lo-0xDC00;
        utf32chr += 0x10000;
    }

    return UTF8_putc((unsigned char *)str, len > 4 ? 4 : len, utf32chr);
}
