
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_REQ ;
typedef int BIO ;


 int X509_FLAG_COMPAT ;
 int X509_REQ_print_ex (int *,int *,int ,int ) ;
 int XN_FLAG_COMPAT ;

int X509_REQ_print(BIO *bp, X509_REQ *x)
{
    return X509_REQ_print_ex(bp, x, XN_FLAG_COMPAT, X509_FLAG_COMPAT);
}
