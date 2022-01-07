
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_puts (int *,char const*) ;

__attribute__((used)) static int asn1_print_boolean(BIO *out, int boolval)
{
    const char *str;
    switch (boolval) {
    case -1:
        str = "BOOL ABSENT";
        break;

    case 0:
        str = "FALSE";
        break;

    default:
        str = "TRUE";
        break;

    }

    if (BIO_puts(out, str) <= 0)
        return 0;
    return 1;

}
