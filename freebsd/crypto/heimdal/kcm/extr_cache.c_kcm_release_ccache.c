
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_6__ {int refcnt; int mutex; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int kcm_free_ccache_data_internal (int ,TYPE_1__*) ;

krb5_error_code
kcm_release_ccache(krb5_context context, kcm_ccache c)
{
    krb5_error_code ret = 0;

    KCM_ASSERT_VALID(c);

    HEIMDAL_MUTEX_lock(&c->mutex);
    if (c->refcnt == 1) {
 kcm_free_ccache_data_internal(context, c);
 free(c);
    } else {
 c->refcnt--;
 HEIMDAL_MUTEX_unlock(&c->mutex);
    }

    return ret;
}
