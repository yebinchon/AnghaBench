
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {int name; int session; int uid; struct TYPE_3__* next; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 TYPE_1__* ccache_head ;
 int ccache_mutex ;
 scalar_t__ kcm_is_same_session (int *,int ,int ) ;
 char* strdup (int ) ;

char *
kcm_ccache_first_name(kcm_client *client)
{
    kcm_ccache p;
    char *name = ((void*)0);

    HEIMDAL_MUTEX_lock(&ccache_mutex);

    for (p = ccache_head; p != ((void*)0); p = p->next) {
 if (kcm_is_same_session(client, p->uid, p->session))
     break;
    }
    if (p)
 name = strdup(p->name);
    HEIMDAL_MUTEX_unlock(&ccache_mutex);
    return name;
}
