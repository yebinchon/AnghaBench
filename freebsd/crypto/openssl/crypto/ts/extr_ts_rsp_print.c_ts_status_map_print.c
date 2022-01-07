
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_map_st {scalar_t__ bit; int text; } ;
typedef int BIO ;
typedef int ASN1_BIT_STRING ;


 scalar_t__ ASN1_BIT_STRING_get_bit (int const*,scalar_t__) ;
 int BIO_printf (int *,char*,...) ;

__attribute__((used)) static int ts_status_map_print(BIO *bio, const struct status_map_st *a,
                               const ASN1_BIT_STRING *v)
{
    int lines = 0;

    for (; a->bit >= 0; ++a) {
        if (ASN1_BIT_STRING_get_bit(v, a->bit)) {
            if (++lines > 1)
                BIO_printf(bio, ", ");
            BIO_printf(bio, "%s", a->text);
        }
    }

    return lines;
}
