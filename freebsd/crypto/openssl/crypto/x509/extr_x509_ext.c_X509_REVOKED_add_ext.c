
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ X509_REVOKED ;
typedef int X509_EXTENSION ;


 int * X509v3_add_ext (int *,int *,int) ;

int X509_REVOKED_add_ext(X509_REVOKED *x, X509_EXTENSION *ex, int loc)
{
    return (X509v3_add_ext(&(x->extensions), ex, loc) != ((void*)0));
}
