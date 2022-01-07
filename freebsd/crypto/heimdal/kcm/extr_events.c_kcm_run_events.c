
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {scalar_t__ valid; scalar_t__ fire_time; scalar_t__ expire_time; TYPE_1__* ccache; struct TYPE_7__* next; } ;
typedef TYPE_2__ kcm_event ;
struct TYPE_6__ {int name; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ KCM_EVENT_QUEUE_INTERVAL ;
 TYPE_2__* events_head ;
 int events_mutex ;
 scalar_t__ kcm_fire_event (int ,TYPE_2__**) ;
 int kcm_log (int,char*,int ,int ) ;
 scalar_t__ kcm_remove_event_internal (int ,TYPE_2__**) ;
 int krb5_get_err_text (int ,scalar_t__) ;
 scalar_t__ last_run ;

krb5_error_code
kcm_run_events(krb5_context context, time_t now)
{
    krb5_error_code ret;
    kcm_event **e;

    HEIMDAL_MUTEX_lock(&events_mutex);


    if (now < last_run + KCM_EVENT_QUEUE_INTERVAL) {
 HEIMDAL_MUTEX_unlock(&events_mutex);
 return 0;
    }


    for (e = &events_head; *e != ((void*)0); e = &(*e)->next) {
 if ((*e)->valid == 0)
     continue;

 if (now >= (*e)->fire_time) {
     ret = kcm_fire_event(context, e);
     if (ret) {
  kcm_log(1, "Could not fire event for cache %s: %s",
   (*e)->ccache->name, krb5_get_err_text(context, ret));
     }
 } else if ((*e)->expire_time && now >= (*e)->expire_time) {
     ret = kcm_remove_event_internal(context, e);
     if (ret) {
  kcm_log(1, "Could not expire event for cache %s: %s",
   (*e)->ccache->name, krb5_get_err_text(context, ret));
     }
 }

 if (*e == ((void*)0))
     break;
    }

    last_run = now;

    HEIMDAL_MUTEX_unlock(&events_mutex);

    return 0;
}
