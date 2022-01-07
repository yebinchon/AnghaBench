
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_probe; } ;
struct auth_master {int dummy; } ;
struct TYPE_2__ {struct auth_master* scan_target; struct auth_master* scan_specific; } ;



__attribute__((used)) static struct auth_master*
xfr_probe_current_master(struct auth_xfer* xfr)
{
 if(xfr->task_probe->scan_specific)
  return xfr->task_probe->scan_specific;
 return xfr->task_probe->scan_target;
}
