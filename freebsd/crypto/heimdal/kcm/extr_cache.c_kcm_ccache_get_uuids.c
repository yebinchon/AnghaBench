
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int flags; int uuid; struct TYPE_4__* next; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_FLAGS_VALID ;
 scalar_t__ KRB5_FCC_NOFILE ;
 TYPE_1__* ccache_head ;
 int ccache_mutex ;
 scalar_t__ kcm_access (int ,int *,int ,TYPE_1__*) ;
 int krb5_storage_write (int *,int ,int) ;

krb5_error_code
kcm_ccache_get_uuids(krb5_context context, kcm_client *client, kcm_operation opcode, krb5_storage *sp)
{
    krb5_error_code ret;
    kcm_ccache p;

    ret = KRB5_FCC_NOFILE;

    HEIMDAL_MUTEX_lock(&ccache_mutex);

    for (p = ccache_head; p != ((void*)0); p = p->next) {
 if ((p->flags & KCM_FLAGS_VALID) == 0)
     continue;
 ret = kcm_access(context, client, opcode, p);
 if (ret) {
     ret = 0;
     continue;
 }
 krb5_storage_write(sp, p->uuid, sizeof(p->uuid));
    }

    HEIMDAL_MUTEX_unlock(&ccache_mutex);

    return ret;
}
