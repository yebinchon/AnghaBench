
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcmuuid_t ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int flags; int uuid; struct TYPE_5__* next; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_FLAGS_VALID ;
 scalar_t__ KRB5_FCC_NOFILE ;
 TYPE_1__* ccache_head ;
 int ccache_mutex ;
 int kcm_retain_ccache (int ,TYPE_1__*) ;
 scalar_t__ memcmp (int ,int ,int) ;

krb5_error_code
kcm_ccache_resolve_by_uuid(krb5_context context,
      kcmuuid_t uuid,
      kcm_ccache *ccache)
{
    kcm_ccache p;
    krb5_error_code ret;

    *ccache = ((void*)0);

    ret = KRB5_FCC_NOFILE;

    HEIMDAL_MUTEX_lock(&ccache_mutex);

    for (p = ccache_head; p != ((void*)0); p = p->next) {
 if ((p->flags & KCM_FLAGS_VALID) == 0)
     continue;
 if (memcmp(p->uuid, uuid, sizeof(kcmuuid_t)) == 0) {
     ret = 0;
     break;
 }
    }

    if (ret == 0) {
 kcm_retain_ccache(context, p);
 *ccache = p;
    }

    HEIMDAL_MUTEX_unlock(&ccache_mutex);

    return ret;
}
