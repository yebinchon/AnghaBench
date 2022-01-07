
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_TYPE ;
typedef int ASN1_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int) ;
 int ASN1_TYPE_set (int *,int ,int *) ;
 int V_ASN1_OCTET_STRING ;

int ASN1_TYPE_set_octetstring(ASN1_TYPE *a, unsigned char *data, int len)
{
    ASN1_STRING *os;

    if ((os = ASN1_OCTET_STRING_new()) == ((void*)0))
        return 0;
    if (!ASN1_OCTET_STRING_set(os, data, len)) {
        ASN1_OCTET_STRING_free(os);
        return 0;
    }
    ASN1_TYPE_set(a, V_ASN1_OCTET_STRING, os);
    return 1;
}
