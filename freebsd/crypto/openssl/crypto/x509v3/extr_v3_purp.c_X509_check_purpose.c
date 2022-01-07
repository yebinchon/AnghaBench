
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* check_purpose ) (TYPE_1__ const*,int *,int) ;} ;
typedef TYPE_1__ X509_PURPOSE ;
typedef int X509 ;


 TYPE_1__* X509_PURPOSE_get0 (int) ;
 int X509_PURPOSE_get_by_id (int) ;
 int stub1 (TYPE_1__ const*,int *,int) ;
 int x509v3_cache_extensions (int *) ;

int X509_check_purpose(X509 *x, int id, int ca)
{
    int idx;
    const X509_PURPOSE *pt;

    x509v3_cache_extensions(x);


    if (id == -1)
        return 1;
    idx = X509_PURPOSE_get_by_id(id);
    if (idx == -1)
        return -1;
    pt = X509_PURPOSE_get0(idx);
    return pt->check_purpose(pt, x, ca);
}
