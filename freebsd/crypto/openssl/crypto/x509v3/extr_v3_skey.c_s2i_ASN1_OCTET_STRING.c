
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;
struct TYPE_5__ {long length; int * data; } ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OCTET_STRING_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_hexstr2buf (char const*,long*) ;
 int X509V3_F_S2I_ASN1_OCTET_STRING ;
 int X509V3err (int ,int ) ;

ASN1_OCTET_STRING *s2i_ASN1_OCTET_STRING(X509V3_EXT_METHOD *method,
                                         X509V3_CTX *ctx, const char *str)
{
    ASN1_OCTET_STRING *oct;
    long length;

    if ((oct = ASN1_OCTET_STRING_new()) == ((void*)0)) {
        X509V3err(X509V3_F_S2I_ASN1_OCTET_STRING, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if ((oct->data = OPENSSL_hexstr2buf(str, &length)) == ((void*)0)) {
        ASN1_OCTET_STRING_free(oct);
        return ((void*)0);
    }

    oct->length = length;

    return oct;

}
