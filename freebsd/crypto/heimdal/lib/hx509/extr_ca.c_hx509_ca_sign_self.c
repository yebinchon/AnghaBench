
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int hx509_ca_tbs ;


 int ca_sign (int ,int ,int ,int *,int *,int *) ;

int
hx509_ca_sign_self(hx509_context context,
     hx509_ca_tbs tbs,
     hx509_private_key signer,
     hx509_cert *certificate)
{
    return ca_sign(context,
     tbs,
     signer,
     ((void*)0),
     ((void*)0),
     certificate);
}
