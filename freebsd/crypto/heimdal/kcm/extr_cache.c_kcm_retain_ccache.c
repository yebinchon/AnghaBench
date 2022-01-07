
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int mutex; int refcnt; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;

krb5_error_code
kcm_retain_ccache(krb5_context context,
    kcm_ccache ccache)
{
    KCM_ASSERT_VALID(ccache);

    HEIMDAL_MUTEX_lock(&ccache->mutex);
    ccache->refcnt++;
    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    return 0;
}
