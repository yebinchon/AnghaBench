
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ kcm_event ;


 TYPE_1__* events_head ;
 int log_event (TYPE_1__*,char*) ;

krb5_error_code
kcm_debug_events(krb5_context context)
{
    kcm_event *e;

    for (e = events_head; e != ((void*)0); e = e->next)
 log_event(e, "debug");

    return 0;
}
