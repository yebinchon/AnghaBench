
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,long) ;
 int BIO_printf (int ,char*) ;
 int V_ASN1_APPLICATION ;
 int V_ASN1_CONSTRUCTED ;
 int V_ASN1_ENUMERATED ;
 int V_ASN1_INTEGER ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNIVERSAL ;
 int bio_err ;

__attribute__((used)) static int ldap_ExtendedResponse_parse(const char *buf, long rem)
{
    const unsigned char *cur, *end;
    long len;
    int tag, xclass, inf, ret = -1;

    cur = (const unsigned char *)buf;
    end = cur + rem;
    inf = ASN1_get_object(&cur, &len, &tag, &xclass, rem);
    if (inf != V_ASN1_CONSTRUCTED || tag != V_ASN1_SEQUENCE ||
        (rem = end - cur, len > rem)) {
        BIO_printf(bio_err, "Unexpected LDAP response\n");
        goto end;
    }

    rem = len;


    inf = ASN1_get_object(&cur, &len, &tag, &xclass, rem);
    if (inf != V_ASN1_UNIVERSAL || tag != V_ASN1_INTEGER ||
        (rem = end - cur, len > rem)) {
        BIO_printf(bio_err, "No MessageID\n");
        goto end;
    }

    cur += len;


    rem = end - cur;
    inf = ASN1_get_object(&cur, &len, &tag, &xclass, rem);
    if (inf != V_ASN1_CONSTRUCTED || xclass != V_ASN1_APPLICATION ||
        tag != 24) {
        BIO_printf(bio_err, "Not ExtendedResponse\n");
        goto end;
    }


    rem = end - cur;
    inf = ASN1_get_object(&cur, &len, &tag, &xclass, rem);
    if (inf != V_ASN1_UNIVERSAL || tag != V_ASN1_ENUMERATED || len == 0 ||
        (rem = end - cur, len > rem)) {
        BIO_printf(bio_err, "Not LDAPResult\n");
        goto end;
    }


    for (ret = 0, inf = 0; inf < len; inf++) {
        ret <<= 8;
        ret |= cur[inf];
    }

 end:
    return ret;
}
