
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int fire_time; int backoff_time; } ;
typedef TYPE_1__ kcm_event ;


 int kcm_enqueue_event (int ,TYPE_1__*) ;
 scalar_t__ time (int *) ;

krb5_error_code
kcm_enqueue_event_relative(krb5_context context,
      kcm_event *event)
{
    krb5_error_code ret;
    kcm_event e;

    e = *event;
    e.backoff_time = e.fire_time;
    e.fire_time += time(((void*)0));

    ret = kcm_enqueue_event(context, &e);

    return ret;
}
