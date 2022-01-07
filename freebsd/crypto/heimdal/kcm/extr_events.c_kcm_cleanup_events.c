
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {scalar_t__ ccache; scalar_t__ valid; struct TYPE_4__* next; } ;
typedef TYPE_1__ kcm_event ;
typedef scalar_t__ kcm_ccache ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (scalar_t__) ;
 TYPE_1__* events_head ;
 int events_mutex ;
 int kcm_remove_event_internal (int ,TYPE_1__**) ;

krb5_error_code
kcm_cleanup_events(krb5_context context,
     kcm_ccache ccache)
{
    kcm_event **e;

    KCM_ASSERT_VALID(ccache);

    HEIMDAL_MUTEX_lock(&events_mutex);

    for (e = &events_head; *e != ((void*)0); e = &(*e)->next) {
 if ((*e)->valid && (*e)->ccache == ccache) {
     kcm_remove_event_internal(context, e);
 }
 if (*e == ((void*)0))
     break;
    }

    HEIMDAL_MUTEX_unlock(&events_mutex);

    return 0;
}
