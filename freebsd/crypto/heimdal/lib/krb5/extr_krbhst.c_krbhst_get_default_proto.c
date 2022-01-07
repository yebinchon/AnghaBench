
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_data {int flags; } ;


 int KD_LARGE_MSG ;
 int KRB5_KRBHST_TCP ;
 int KRB5_KRBHST_UDP ;

__attribute__((used)) static int
krbhst_get_default_proto(struct krb5_krbhst_data *kd)
{
    if (kd->flags & KD_LARGE_MSG)
 return KRB5_KRBHST_TCP;
    return KRB5_KRBHST_UDP;
}
