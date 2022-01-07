
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_free (int *) ;
 int * ASN1_generate_v3 (char const*,int *) ;
 long i2d_ASN1_TYPE (int *,unsigned char**) ;

__attribute__((used)) static unsigned char *generic_asn1(const char *value, X509V3_CTX *ctx,
                                   long *ext_len)
{
    ASN1_TYPE *typ;
    unsigned char *ext_der = ((void*)0);
    typ = ASN1_generate_v3(value, ctx);
    if (typ == ((void*)0))
        return ((void*)0);
    *ext_len = i2d_ASN1_TYPE(typ, &ext_der);
    ASN1_TYPE_free(typ);
    return ext_der;
}
