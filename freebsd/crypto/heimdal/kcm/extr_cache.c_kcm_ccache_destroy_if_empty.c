
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int name; int * creds; } ;


 int KCM_ASSERT_VALID (TYPE_1__*) ;
 scalar_t__ kcm_ccache_destroy (int ,int ) ;

krb5_error_code
kcm_ccache_destroy_if_empty(krb5_context context,
       kcm_ccache ccache)
{
    krb5_error_code ret;

    KCM_ASSERT_VALID(ccache);

    if (ccache->creds == ((void*)0)) {
 ret = kcm_ccache_destroy(context, ccache->name);
    } else
 ret = 0;

    return ret;
}
