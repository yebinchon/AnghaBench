
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int client; } ;


 TYPE_1__* KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;
 int krb5_copy_principal (int ,int ,int *) ;

__attribute__((used)) static krb5_error_code
kcmss_get_principal(krb5_context context,
      krb5_ccache id,
      krb5_principal *principal)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    ret = krb5_copy_principal(context, c->client,
         principal);

    return ret;
}
