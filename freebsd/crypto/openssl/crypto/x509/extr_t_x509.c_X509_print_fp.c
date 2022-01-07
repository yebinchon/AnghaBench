
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int FILE ;


 int X509_FLAG_COMPAT ;
 int X509_print_ex_fp (int *,int *,int ,int ) ;
 int XN_FLAG_COMPAT ;

int X509_print_fp(FILE *fp, X509 *x)
{
    return X509_print_ex_fp(fp, x, XN_FLAG_COMPAT, X509_FLAG_COMPAT);
}
