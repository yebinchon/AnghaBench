
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int BIO ;


 int X509_CRL_print_ex (int *,int *,int ) ;
 int XN_FLAG_COMPAT ;

int X509_CRL_print(BIO *out, X509_CRL *x)
{
  return X509_CRL_print_ex(out, x, XN_FLAG_COMPAT);
}
