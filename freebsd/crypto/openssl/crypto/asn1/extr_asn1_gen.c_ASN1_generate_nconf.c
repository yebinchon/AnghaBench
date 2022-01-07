
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_CTX ;
typedef int CONF ;
typedef int ASN1_TYPE ;


 int * ASN1_generate_v3 (char const*,int *) ;
 int X509V3_set_nconf (int *,int *) ;

ASN1_TYPE *ASN1_generate_nconf(const char *str, CONF *nconf)
{
    X509V3_CTX cnf;

    if (!nconf)
        return ASN1_generate_v3(str, ((void*)0));

    X509V3_set_nconf(&cnf, nconf);
    return ASN1_generate_v3(str, &cnf);
}
