
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
struct TYPE_9__ {int action; scalar_t__ fire_time; int backoff_time; scalar_t__ expire_time; TYPE_5__* ccache; int fire_count; } ;
typedef TYPE_1__ kcm_event ;
struct TYPE_10__ {int name; int client; } ;





 int KCM_EVENT_MAX_BACKOFF_TIME ;
 int const KCM_EVENT_NONE ;

 scalar_t__ KRB5KRB_AP_ERR_TKT_EXPIRED ;
 scalar_t__ KRB5_FCC_INTERNAL ;
 int free (char*) ;
 scalar_t__ kcm_ccache_acquire (int ,TYPE_5__*,int **) ;
 scalar_t__ kcm_ccache_destroy (int ,int ) ;
 scalar_t__ kcm_ccache_destroy_if_empty (int ,TYPE_5__*) ;
 scalar_t__ kcm_ccache_make_default_event (int ,TYPE_1__*,int *) ;
 scalar_t__ kcm_ccache_refresh (int ,TYPE_5__*,int **) ;
 int kcm_log (int ,char*,char*,int ,char*) ;
 int kcm_remove_event_internal (int ,TYPE_1__**) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int log_event (TYPE_1__*,char*) ;

__attribute__((used)) static krb5_error_code
kcm_fire_event(krb5_context context,
        kcm_event **e)
{
    kcm_event *event;
    krb5_error_code ret;
    krb5_creds *credp = ((void*)0);
    int oneshot = 1;

    event = *e;

    switch (event->action) {
    case 131:
 ret = kcm_ccache_acquire(context, event->ccache, &credp);
 oneshot = 0;
 break;
    case 128:
 ret = kcm_ccache_refresh(context, event->ccache, &credp);
 if (ret == KRB5KRB_AP_ERR_TKT_EXPIRED) {
     ret = kcm_ccache_acquire(context, event->ccache, &credp);
 }
 oneshot = 0;
 break;
    case 130:
 ret = kcm_ccache_destroy(context, event->ccache->name);
 break;
    case 129:
 ret = kcm_ccache_destroy_if_empty(context, event->ccache);
 break;
    default:
 ret = KRB5_FCC_INTERNAL;
 break;
    }

    event->fire_count++;

    if (ret) {

 event->fire_time += event->backoff_time;
 if (event->backoff_time < KCM_EVENT_MAX_BACKOFF_TIME)
     event->backoff_time *= 2;


 if (event->expire_time &&
     event->fire_time > event->expire_time)
     kcm_remove_event_internal(context, e);
    } else {
 if (!oneshot) {
     char *cpn;

     if (krb5_unparse_name(context, event->ccache->client,
      &cpn))
  cpn = ((void*)0);

     kcm_log(0, "%s credentials in cache %s for principal %s",
      (event->action == 131) ?
   "Acquired" : "Renewed",
      event->ccache->name,
      (cpn != ((void*)0)) ? cpn : "<none>");

     if (cpn != ((void*)0))
  free(cpn);


     ret = kcm_ccache_make_default_event(context, event, credp);
     if (ret || event->action == KCM_EVENT_NONE)
  oneshot = 1;
     else
  log_event(event, "requeuing");
 }
 if (oneshot)
     kcm_remove_event_internal(context, e);
    }

    return ret;
}
