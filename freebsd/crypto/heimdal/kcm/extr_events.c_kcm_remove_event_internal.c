
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {struct TYPE_4__* next; int ccache; scalar_t__ backoff_time; scalar_t__ expire_time; scalar_t__ fire_count; scalar_t__ fire_time; scalar_t__ valid; } ;
typedef TYPE_1__ kcm_event ;


 int free (TYPE_1__*) ;
 int kcm_release_ccache (int ,int ) ;

__attribute__((used)) static krb5_error_code
kcm_remove_event_internal(krb5_context context,
     kcm_event **e)
{
    kcm_event *next;

    next = (*e)->next;

    (*e)->valid = 0;
    (*e)->fire_time = 0;
    (*e)->fire_count = 0;
    (*e)->expire_time = 0;
    (*e)->backoff_time = 0;
    kcm_release_ccache(context, (*e)->ccache);
    (*e)->next = ((void*)0);
    free(*e);

    *e = next;

    return 0;
}
