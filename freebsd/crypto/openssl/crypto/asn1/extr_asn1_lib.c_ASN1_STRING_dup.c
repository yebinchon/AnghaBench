
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING ;


 int ASN1_STRING_copy (int *,int const*) ;
 int ASN1_STRING_free (int *) ;
 int * ASN1_STRING_new () ;

ASN1_STRING *ASN1_STRING_dup(const ASN1_STRING *str)
{
    ASN1_STRING *ret;
    if (!str)
        return ((void*)0);
    ret = ASN1_STRING_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!ASN1_STRING_copy(ret, str)) {
        ASN1_STRING_free(ret);
        return ((void*)0);
    }
    return ret;
}
