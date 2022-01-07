
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t action; TYPE_1__* ccache; int backoff_time; int fire_count; int expire_time; int fire_time; } ;
typedef TYPE_2__ kcm_event ;
struct TYPE_5__ {int name; } ;


 int * action_strings ;
 int kcm_log (int,char*,char*,TYPE_2__*,char*,int ,char*,int ,int ,int ) ;
 int print_times (int ,char*) ;

__attribute__((used)) static void
log_event(kcm_event *event, char *msg)
{
    char fire_time[64], expire_time[64];

    print_times(event->fire_time, fire_time);
    print_times(event->expire_time, expire_time);

    kcm_log(7, "%s event %08x: fire_time %s fire_count %d expire_time %s "
     "backoff_time %d action %s cache %s",
     msg, event, fire_time, event->fire_count, expire_time,
     event->backoff_time, action_strings[event->action],
     event->ccache->name);
}
