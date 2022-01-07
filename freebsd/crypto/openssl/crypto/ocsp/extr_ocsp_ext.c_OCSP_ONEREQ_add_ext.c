
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {int singleRequestExtensions; } ;
typedef TYPE_1__ OCSP_ONEREQ ;


 int * X509v3_add_ext (int *,int *,int) ;

int OCSP_ONEREQ_add_ext(OCSP_ONEREQ *x, X509_EXTENSION *ex, int loc)
{
    return (X509v3_add_ext(&(x->singleRequestExtensions), ex, loc) != ((void*)0));
}
