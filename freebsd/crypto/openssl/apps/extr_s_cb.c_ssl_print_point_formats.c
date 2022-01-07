
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_printf (int *,char*,int) ;
 int BIO_puts (int *,char*) ;
 int SSL_get0_ec_point_formats (int *,char const**) ;




int ssl_print_point_formats(BIO *out, SSL *s)
{
    int i, nformats;
    const char *pformats;
    nformats = SSL_get0_ec_point_formats(s, &pformats);
    if (nformats <= 0)
        return 1;
    BIO_puts(out, "Supported Elliptic Curve Point Formats: ");
    for (i = 0; i < nformats; i++, pformats++) {
        if (i)
            BIO_puts(out, ":");
        switch (*pformats) {
        case 128:
            BIO_puts(out, "uncompressed");
            break;

        case 129:
            BIO_puts(out, "ansiX962_compressed_prime");
            break;

        case 130:
            BIO_puts(out, "ansiX962_compressed_char2");
            break;

        default:
            BIO_printf(out, "unknown(%d)", (int)*pformats);
            break;

        }
    }
    BIO_puts(out, "\n");
    return 1;
}
