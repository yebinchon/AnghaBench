
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {int singleExtensions; } ;
typedef TYPE_1__ OCSP_SINGLERESP ;


 int * X509v3_add_ext (int *,int *,int) ;

int OCSP_SINGLERESP_add_ext(OCSP_SINGLERESP *x, X509_EXTENSION *ex, int loc)
{
    return (X509v3_add_ext(&(x->singleExtensions), ex, loc) != ((void*)0));
}
