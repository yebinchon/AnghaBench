
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group_config {int dummy; } ;
struct p2p_group {struct p2p_group_config const* cfg; } ;



const struct p2p_group_config * p2p_group_get_config(struct p2p_group *group)
{
 return group->cfg;
}
