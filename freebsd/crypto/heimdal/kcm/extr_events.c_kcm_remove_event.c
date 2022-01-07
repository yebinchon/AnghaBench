
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ kcm_event ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KRB5_CC_NOTFOUND ;
 TYPE_1__* events_head ;
 int events_mutex ;
 int kcm_remove_event_internal (int ,TYPE_1__**) ;
 int log_event (TYPE_1__*,char*) ;

krb5_error_code
kcm_remove_event(krb5_context context,
   kcm_event *event)
{
    krb5_error_code ret;
    kcm_event **e;
    int found = 0;

    log_event(event, "removing");

    HEIMDAL_MUTEX_lock(&events_mutex);
    for (e = &events_head; *e != ((void*)0); e = &(*e)->next) {
 if (event == *e) {
     *e = event->next;
     found++;
     break;
 }
    }

    if (!found) {
 ret = KRB5_CC_NOTFOUND;
 goto out;
    }

    ret = kcm_remove_event_internal(context, &event);

out:
    HEIMDAL_MUTEX_unlock(&events_mutex);

    return ret;
}
