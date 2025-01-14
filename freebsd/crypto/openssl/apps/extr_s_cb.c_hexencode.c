
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,int ,size_t) ;
 char* app_malloc (int,char*) ;
 int bio_err ;
 int exit (int) ;
 int opt_getprog () ;

__attribute__((used)) static char *hexencode(const unsigned char *data, size_t len)
{
    static const char *hex = "0123456789abcdef";
    char *out;
    char *cp;
    size_t outlen = 2 * len + 1;
    int ilen = (int) outlen;

    if (outlen < len || ilen < 0 || outlen != (size_t)ilen) {
        BIO_printf(bio_err, "%s: %zu-byte buffer too large to hexencode\n",
                   opt_getprog(), len);
        exit(1);
    }
    cp = out = app_malloc(ilen, "TLSA hex data buffer");

    while (len-- > 0) {
        *cp++ = hex[(*data >> 4) & 0x0f];
        *cp++ = hex[*data++ & 0x0f];
    }
    *cp = '\0';
    return out;
}
