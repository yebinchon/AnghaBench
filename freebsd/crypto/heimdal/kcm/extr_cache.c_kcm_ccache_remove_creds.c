
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int mutex; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;
 int kcm_ccache_remove_creds_internal (int ,TYPE_1__*) ;

krb5_error_code
kcm_ccache_remove_creds(krb5_context context,
   kcm_ccache ccache)
{
    krb5_error_code ret;

    KCM_ASSERT_VALID(ccache);

    HEIMDAL_MUTEX_lock(&ccache->mutex);
    ret = kcm_ccache_remove_creds_internal(context, ccache);
    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    return ret;
}
