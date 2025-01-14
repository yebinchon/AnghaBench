
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;
typedef int BIO ;


 char* ASN1_tag2str (int) ;
 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char const*,char const*) ;
 int BIO_snprintf (char*,int,char*,int) ;
 int BIO_write (int *,char const*,int) ;
 int V_ASN1_APPLICATION ;
 int V_ASN1_CONSTRUCTED ;
 int V_ASN1_CONTEXT_SPECIFIC ;
 int V_ASN1_PRIVATE ;

__attribute__((used)) static int asn1_print_info(BIO *bp, int tag, int xclass, int constructed,
                           int indent)
{
    static const char fmt[] = "%-18s";
    char str[128];
    const char *p;

    if (constructed & V_ASN1_CONSTRUCTED)
        p = "cons: ";
    else
        p = "prim: ";
    if (BIO_write(bp, p, 6) < 6)
        goto err;
    BIO_indent(bp, indent, 128);

    p = str;
    if ((xclass & V_ASN1_PRIVATE) == V_ASN1_PRIVATE)
        BIO_snprintf(str, sizeof(str), "priv [ %d ] ", tag);
    else if ((xclass & V_ASN1_CONTEXT_SPECIFIC) == V_ASN1_CONTEXT_SPECIFIC)
        BIO_snprintf(str, sizeof(str), "cont [ %d ]", tag);
    else if ((xclass & V_ASN1_APPLICATION) == V_ASN1_APPLICATION)
        BIO_snprintf(str, sizeof(str), "appl [ %d ]", tag);
    else if (tag > 30)
        BIO_snprintf(str, sizeof(str), "<ASN1 %d>", tag);
    else
        p = ASN1_tag2str(tag);

    if (BIO_printf(bp, fmt, p) <= 0)
        goto err;
    return 1;
 err:
    return 0;
}
