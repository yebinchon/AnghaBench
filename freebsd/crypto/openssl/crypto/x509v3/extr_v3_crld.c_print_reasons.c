
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lname; int bitnum; } ;
typedef TYPE_1__ BIT_STRING_BITNAME ;
typedef int BIO ;
typedef int ASN1_BIT_STRING ;


 scalar_t__ ASN1_BIT_STRING_get_bit (int *,int ) ;
 int BIO_printf (int *,char*,int,char*,char const*,int,char*) ;
 int BIO_puts (int *,char*) ;
 TYPE_1__* reason_flags ;

__attribute__((used)) static int print_reasons(BIO *out, const char *rname,
                         ASN1_BIT_STRING *rflags, int indent)
{
    int first = 1;
    const BIT_STRING_BITNAME *pbn;
    BIO_printf(out, "%*s%s:\n%*s", indent, "", rname, indent + 2, "");
    for (pbn = reason_flags; pbn->lname; pbn++) {
        if (ASN1_BIT_STRING_get_bit(rflags, pbn->bitnum)) {
            if (first)
                first = 0;
            else
                BIO_puts(out, ", ");
            BIO_puts(out, pbn->lname);
        }
    }
    if (first)
        BIO_puts(out, "<EMPTY>\n");
    else
        BIO_puts(out, "\n");
    return 1;
}
