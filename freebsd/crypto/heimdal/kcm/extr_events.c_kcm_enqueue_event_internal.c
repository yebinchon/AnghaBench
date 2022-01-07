
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_5__ {scalar_t__ action; int valid; struct TYPE_5__* next; int ccache; int backoff_time; int expire_time; scalar_t__ fire_count; int fire_time; } ;
typedef TYPE_1__ kcm_event ;


 scalar_t__ KCM_EVENT_NONE ;
 int KRB5_CC_NOMEM ;
 TYPE_1__* events_head ;
 int kcm_retain_ccache (int ,int ) ;
 int log_event (TYPE_1__*,char*) ;
 scalar_t__ malloc (int) ;

krb5_error_code
kcm_enqueue_event_internal(krb5_context context,
      kcm_event *event)
{
    kcm_event **e;

    if (event->action == KCM_EVENT_NONE)
 return 0;

    for (e = &events_head; *e != ((void*)0); e = &(*e)->next)
 ;

    *e = (kcm_event *)malloc(sizeof(kcm_event));
    if (*e == ((void*)0)) {
 return KRB5_CC_NOMEM;
    }

    (*e)->valid = 1;
    (*e)->fire_time = event->fire_time;
    (*e)->fire_count = 0;
    (*e)->expire_time = event->expire_time;
    (*e)->backoff_time = event->backoff_time;

    (*e)->action = event->action;

    kcm_retain_ccache(context, event->ccache);
    (*e)->ccache = event->ccache;
    (*e)->next = ((void*)0);

    log_event(*e, "enqueuing");

    return 0;
}
