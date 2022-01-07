
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_master {int host; } ;
struct TYPE_6__ {int * list; } ;
struct TYPE_5__ {int * list; } ;
struct TYPE_4__ {TYPE_3__* scan_target; int * scan_addr; TYPE_3__* masters; TYPE_2__* scan_specific; } ;


 TYPE_2__* find_master_by_host (TYPE_3__*,int ) ;

__attribute__((used)) static void
xfr_transfer_start_list(struct auth_xfer* xfr, struct auth_master* spec)
{
 if(spec) {
  xfr->task_transfer->scan_specific = find_master_by_host(
   xfr->task_transfer->masters, spec->host);
  if(xfr->task_transfer->scan_specific) {
   xfr->task_transfer->scan_target = ((void*)0);
   xfr->task_transfer->scan_addr = ((void*)0);
   if(xfr->task_transfer->scan_specific->list)
    xfr->task_transfer->scan_addr =
     xfr->task_transfer->scan_specific->list;
   return;
  }
 }

 xfr->task_transfer->scan_specific = ((void*)0);
 xfr->task_transfer->scan_addr = ((void*)0);

 xfr->task_transfer->scan_target = xfr->task_transfer->masters;
 if(xfr->task_transfer->scan_target && xfr->task_transfer->
  scan_target->list)
  xfr->task_transfer->scan_addr =
   xfr->task_transfer->scan_target->list;
}
