
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int length; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_OBJECT ;


 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 scalar_t__ V_ASN1_IA5STRING ;
 scalar_t__ V_ASN1_PRINTABLESTRING ;
 scalar_t__ V_ASN1_T61STRING ;
 scalar_t__ V_ASN1_UNIVERSALSTRING ;
 int bio_err ;
 int i2a_ASN1_OBJECT (int ,int const*) ;

__attribute__((used)) static int old_entry_print(const ASN1_OBJECT *obj, const ASN1_STRING *str)
{
    char buf[25], *pbuf;
    const char *p;
    int j;

    j = i2a_ASN1_OBJECT(bio_err, obj);
    pbuf = buf;
    for (j = 22 - j; j > 0; j--)
        *(pbuf++) = ' ';
    *(pbuf++) = ':';
    *(pbuf++) = '\0';
    BIO_puts(bio_err, buf);

    if (str->type == V_ASN1_PRINTABLESTRING)
        BIO_printf(bio_err, "PRINTABLE:'");
    else if (str->type == V_ASN1_T61STRING)
        BIO_printf(bio_err, "T61STRING:'");
    else if (str->type == V_ASN1_IA5STRING)
        BIO_printf(bio_err, "IA5STRING:'");
    else if (str->type == V_ASN1_UNIVERSALSTRING)
        BIO_printf(bio_err, "UNIVERSALSTRING:'");
    else
        BIO_printf(bio_err, "ASN.1 %2d:'", str->type);

    p = (const char *)str->data;
    for (j = str->length; j > 0; j--) {
        if ((*p >= ' ') && (*p <= '~'))
            BIO_printf(bio_err, "%c", *p);
        else if (*p & 0x80)
            BIO_printf(bio_err, "\\0x%02X", *p);
        else if ((unsigned char)*p == 0xf7)
            BIO_printf(bio_err, "^?");
        else
            BIO_printf(bio_err, "^%c", *p + '@');
        p++;
    }
    BIO_printf(bio_err, "'\n");
    return 1;
}
