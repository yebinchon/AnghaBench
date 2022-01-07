
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_group {TYPE_1__* cfg; } ;
struct TYPE_2__ {int const* interface_addr; } ;



const u8 * p2p_group_get_interface_addr(struct p2p_group *group)
{
 return group->cfg->interface_addr;
}
