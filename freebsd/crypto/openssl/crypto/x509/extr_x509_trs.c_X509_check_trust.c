
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* check_trust ) (TYPE_1__*,int *,int) ;} ;
typedef TYPE_1__ X509_TRUST ;
typedef int X509 ;


 int NID_anyExtendedKeyUsage ;
 int X509_TRUST_DEFAULT ;
 int X509_TRUST_DO_SS_COMPAT ;
 TYPE_1__* X509_TRUST_get0 (int) ;
 int X509_TRUST_get_by_id (int) ;
 int default_trust (int,int *,int) ;
 int obj_trust (int ,int *,int) ;
 int stub1 (TYPE_1__*,int *,int) ;

int X509_check_trust(X509 *x, int id, int flags)
{
    X509_TRUST *pt;
    int idx;


    if (id == X509_TRUST_DEFAULT)
        return obj_trust(NID_anyExtendedKeyUsage, x,
                         flags | X509_TRUST_DO_SS_COMPAT);
    idx = X509_TRUST_get_by_id(id);
    if (idx == -1)
        return default_trust(id, x, flags);
    pt = X509_TRUST_get0(idx);
    return pt->check_trust(pt, x, flags);
}
