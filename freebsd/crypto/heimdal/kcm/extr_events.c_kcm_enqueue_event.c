
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {scalar_t__ action; } ;
typedef TYPE_1__ kcm_event ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ KCM_EVENT_NONE ;
 int events_mutex ;
 int kcm_enqueue_event_internal (int ,TYPE_1__*) ;

krb5_error_code
kcm_enqueue_event(krb5_context context,
    kcm_event *event)
{
    krb5_error_code ret;

    if (event->action == KCM_EVENT_NONE) {
 return 0;
    }

    HEIMDAL_MUTEX_lock(&events_mutex);
    ret = kcm_enqueue_event_internal(context, event);
    HEIMDAL_MUTEX_unlock(&events_mutex);

    return ret;
}
