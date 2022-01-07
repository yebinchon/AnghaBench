
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ctl_nexus {int targ_port; scalar_t__ initid; } ;


 int CTL_MAX_INIT_PER_PORT ;

uint32_t
ctl_get_initindex(struct ctl_nexus *nexus)
{
 return (nexus->initid + (nexus->targ_port * CTL_MAX_INIT_PER_PORT));
}
