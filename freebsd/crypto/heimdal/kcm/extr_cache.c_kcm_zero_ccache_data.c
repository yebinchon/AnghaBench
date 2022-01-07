
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
 int kcm_zero_ccache_data_internal (int ,TYPE_1__*) ;

krb5_error_code
kcm_zero_ccache_data(krb5_context context,
       kcm_ccache cache)
{
    krb5_error_code ret;

    KCM_ASSERT_VALID(cache);

    HEIMDAL_MUTEX_lock(&cache->mutex);
    ret = kcm_zero_ccache_data_internal(context, cache);
    HEIMDAL_MUTEX_unlock(&cache->mutex);

    return ret;
}
