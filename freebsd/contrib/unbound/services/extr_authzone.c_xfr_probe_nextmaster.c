
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct auth_xfer {TYPE_3__* task_probe; } ;
struct TYPE_6__ {TYPE_2__* scan_target; TYPE_1__* scan_addr; TYPE_2__* masters; int * scan_specific; } ;
struct TYPE_5__ {TYPE_1__* list; struct TYPE_5__* next; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;



__attribute__((used)) static void
xfr_probe_nextmaster(struct auth_xfer* xfr)
{
 if(!xfr->task_probe->scan_specific && !xfr->task_probe->scan_target)
  return;
 if(xfr->task_probe->scan_addr) {
  xfr->task_probe->scan_addr = xfr->task_probe->scan_addr->next;
  if(xfr->task_probe->scan_addr)
   return;
 }
 if(xfr->task_probe->scan_specific) {
  xfr->task_probe->scan_specific = ((void*)0);
  xfr->task_probe->scan_target = xfr->task_probe->masters;
  if(xfr->task_probe->scan_target && xfr->task_probe->
   scan_target->list)
   xfr->task_probe->scan_addr =
    xfr->task_probe->scan_target->list;
  return;
 }
 if(!xfr->task_probe->scan_target)
  return;
 xfr->task_probe->scan_target = xfr->task_probe->scan_target->next;
 if(xfr->task_probe->scan_target && xfr->task_probe->
  scan_target->list)
  xfr->task_probe->scan_addr =
   xfr->task_probe->scan_target->list;
 return;
}
