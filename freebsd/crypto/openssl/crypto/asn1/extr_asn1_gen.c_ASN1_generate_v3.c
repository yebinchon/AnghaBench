
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_F_ASN1_GENERATE_V3 ;
 int ASN1err (int ,int) ;
 int * generate_v3 (char const*,int *,int ,int*) ;

ASN1_TYPE *ASN1_generate_v3(const char *str, X509V3_CTX *cnf)
{
    int err = 0;
    ASN1_TYPE *ret = generate_v3(str, cnf, 0, &err);
    if (err)
        ASN1err(ASN1_F_ASN1_GENERATE_V3, err);
    return ret;
}
