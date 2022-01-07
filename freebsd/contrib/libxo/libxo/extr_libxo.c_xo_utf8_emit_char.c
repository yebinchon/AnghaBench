
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int ssize_t ;


 char* xo_utf8_data_bits ;
 char* xo_utf8_len_bits ;

__attribute__((used)) static void
xo_utf8_emit_char (char *buf, ssize_t len, wchar_t wc)
{
    ssize_t i;

    if (len == 1) {
 buf[0] = wc & 0x7f;
 return;
    }


    for (i = len - 1; i >= 0; i--) {
 buf[i] = 0x80 | (wc & 0x3f);
 wc >>= 6;
    }


    buf[0] &= xo_utf8_data_bits[len];
    buf[0] |= xo_utf8_len_bits[len];
}
