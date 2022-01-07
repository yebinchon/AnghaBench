
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 int * X509v3_add_ext (int *,int *,int) ;

int X509_add_ext(X509 *x, X509_EXTENSION *ex, int loc)
{
    return (X509v3_add_ext(&(x->cert_info.extensions), ex, loc) != ((void*)0));
}
