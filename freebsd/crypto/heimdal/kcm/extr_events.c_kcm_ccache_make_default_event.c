
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_13__ {scalar_t__ endtime; } ;
struct TYPE_11__ {scalar_t__ renewable; } ;
struct TYPE_12__ {TYPE_1__ b; } ;
struct TYPE_14__ {TYPE_3__ times; TYPE_2__ flags; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
struct TYPE_15__ {void* action; scalar_t__ fire_time; int backoff_time; scalar_t__ expire_time; TYPE_6__* ccache; } ;
typedef TYPE_5__ kcm_event ;
typedef TYPE_6__* kcm_ccache ;
struct TYPE_16__ {int flags; } ;


 void* KCM_EVENT_ACQUIRE_CREDS ;
 int KCM_EVENT_DEFAULT_BACKOFF_TIME ;
 void* KCM_EVENT_NONE ;
 scalar_t__ KCM_EVENT_QUEUE_INTERVAL ;
 void* KCM_EVENT_RENEW_CREDS ;
 int KCM_FLAGS_RENEWABLE ;
 int KCM_MASK_KEY_PRESENT ;
 int KRB5_FCC_INTERNAL ;
 scalar_t__ is_primary_credential_p (int ,TYPE_6__*,TYPE_4__*) ;
 int kcm_log (int ,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static krb5_error_code
kcm_ccache_make_default_event(krb5_context context,
         kcm_event *event,
         krb5_creds *newcred)
{
    krb5_error_code ret = 0;
    kcm_ccache ccache = event->ccache;

    event->fire_time = 0;
    event->expire_time = 0;
    event->backoff_time = KCM_EVENT_DEFAULT_BACKOFF_TIME;

    if (newcred == ((void*)0)) {

 if ((ccache->flags & KCM_MASK_KEY_PRESENT) == 0) {
     kcm_log(0, "Cannot acquire credentials without a key");
     return KRB5_FCC_INTERNAL;
 }

 event->fire_time = time(((void*)0));
 event->action = KCM_EVENT_ACQUIRE_CREDS;
    } else if (is_primary_credential_p(context, ccache, newcred)) {
 if (newcred->flags.b.renewable) {
     event->action = KCM_EVENT_RENEW_CREDS;
     ccache->flags |= KCM_FLAGS_RENEWABLE;
 } else {
     if (ccache->flags & KCM_MASK_KEY_PRESENT)
  event->action = KCM_EVENT_ACQUIRE_CREDS;
     else
  event->action = KCM_EVENT_NONE;
     ccache->flags &= ~(KCM_FLAGS_RENEWABLE);
 }

 event->fire_time = newcred->times.endtime - KCM_EVENT_QUEUE_INTERVAL;
    } else {
 event->action = KCM_EVENT_NONE;
    }

    return ret;
}
