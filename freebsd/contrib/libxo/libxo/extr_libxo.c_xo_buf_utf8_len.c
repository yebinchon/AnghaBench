
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;
typedef int ssize_t ;


 int xo_failure (int *,char*,int,...) ;
 int xo_utf8_to_wc_len (char const*) ;

__attribute__((used)) static ssize_t
xo_buf_utf8_len (xo_handle_t *xop, const char *buf, ssize_t bufsiz)
{
    unsigned b = (unsigned char) *buf;
    ssize_t len, i;

    len = xo_utf8_to_wc_len(buf);
    if (len < 0) {
        xo_failure(xop, "invalid UTF-8 data: %02hhx", b);
 return -1;
    }

    if (len > bufsiz) {
        xo_failure(xop, "invalid UTF-8 data (short): %02hhx (%d/%d)",
     b, len, bufsiz);
 return -1;
    }

    for (i = 2; i < len; i++) {
 b = (unsigned char ) buf[i];
 if ((b & 0xc0) != 0x80) {
     xo_failure(xop, "invalid UTF-8 data (byte %d): %x", i, b);
     return -1;
 }
    }

    return len;
}
