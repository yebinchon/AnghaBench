
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int flags; int refcnt; struct TYPE_5__* next; int name; } ;


 scalar_t__ EAGAIN ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_FLAGS_VALID ;
 scalar_t__ KRB5_FCC_NOFILE ;
 TYPE_1__* ccache_head ;
 int ccache_mutex ;
 int free (TYPE_1__*) ;
 int kcm_free_ccache_data_internal (int ,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

krb5_error_code
kcm_ccache_destroy(krb5_context context, const char *name)
{
    kcm_ccache *p, ccache;
    krb5_error_code ret;

    ret = KRB5_FCC_NOFILE;

    HEIMDAL_MUTEX_lock(&ccache_mutex);
    for (p = &ccache_head; *p != ((void*)0); p = &(*p)->next) {
 if (((*p)->flags & KCM_FLAGS_VALID) == 0)
     continue;
 if (strcmp((*p)->name, name) == 0) {
     ret = 0;
     break;
 }
    }
    if (ret)
 goto out;

    if ((*p)->refcnt != 1) {
 ret = EAGAIN;
 goto out;
    }

    ccache = *p;
    *p = (*p)->next;
    kcm_free_ccache_data_internal(context, ccache);
    free(ccache);

out:
    HEIMDAL_MUTEX_unlock(&ccache_mutex);

    return ret;
}
