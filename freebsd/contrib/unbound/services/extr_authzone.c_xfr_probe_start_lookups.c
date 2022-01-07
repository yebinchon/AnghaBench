
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_probe; } ;
struct TYPE_2__ {scalar_t__ lookup_aaaa; int masters; int lookup_target; } ;


 int xfr_masterlist_free_addrs (int ) ;

__attribute__((used)) static void
xfr_probe_start_lookups(struct auth_xfer* xfr)
{

 xfr_masterlist_free_addrs(xfr->task_probe->masters);


 xfr->task_probe->lookup_target = xfr->task_probe->masters;
 xfr->task_probe->lookup_aaaa = 0;
}
