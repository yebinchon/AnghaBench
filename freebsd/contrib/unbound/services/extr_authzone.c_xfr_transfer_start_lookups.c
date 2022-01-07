
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct TYPE_2__ {scalar_t__ lookup_aaaa; int masters; int lookup_target; } ;


 int xfr_masterlist_free_addrs (int ) ;

__attribute__((used)) static void
xfr_transfer_start_lookups(struct auth_xfer* xfr)
{

 xfr_masterlist_free_addrs(xfr->task_transfer->masters);


 xfr->task_transfer->lookup_target = xfr->task_transfer->masters;
 xfr->task_transfer->lookup_aaaa = 0;
}
