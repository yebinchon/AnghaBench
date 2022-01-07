
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int client; } ;


 TYPE_1__* KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;
 scalar_t__ kcm_zero_ccache_data_internal (int ,TYPE_1__*) ;
 scalar_t__ krb5_copy_principal (int ,int ,int *) ;

__attribute__((used)) static krb5_error_code
kcmss_initialize(krb5_context context,
   krb5_ccache id,
   krb5_principal primary_principal)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    ret = kcm_zero_ccache_data_internal(context, c);
    if (ret)
 return ret;

    ret = krb5_copy_principal(context, primary_principal,
         &c->client);

    return ret;
}
