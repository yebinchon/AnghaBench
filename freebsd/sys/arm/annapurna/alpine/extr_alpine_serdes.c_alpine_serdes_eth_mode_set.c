
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct alpine_serdes_eth_group_mode {int mode_set; int mode; int lock; } ;
struct al_serdes_grp_obj {int (* mode_set_kr ) (struct al_serdes_grp_obj*) ;int (* mode_set_sgmii ) (struct al_serdes_grp_obj*) ;} ;
typedef enum alpine_serdes_eth_mode { ____Placeholder_alpine_serdes_eth_mode } alpine_serdes_eth_mode ;


 int ALPINE_SERDES_ETH_MODE_SGMII ;
 int EINVAL ;
 size_t SERDES_NUM_GROUPS ;
 int al_serdes_handle_grp_init (int ,size_t,struct al_serdes_grp_obj*) ;
 struct alpine_serdes_eth_group_mode* alpine_serdes_eth_group_mode ;
 int alpine_serdes_resource_get (size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * serdes_base ;
 int stub1 (struct al_serdes_grp_obj*) ;
 int stub2 (struct al_serdes_grp_obj*) ;

int
alpine_serdes_eth_mode_set(uint32_t group, enum alpine_serdes_eth_mode mode)
{
 struct alpine_serdes_eth_group_mode *group_mode;

 group_mode = &alpine_serdes_eth_group_mode[group];

 if (serdes_base == ((void*)0))
  return (EINVAL);

 if (group >= SERDES_NUM_GROUPS)
  return (EINVAL);

 mtx_lock(&group_mode->lock);

 if (!group_mode->mode_set || (group_mode->mode != mode)) {
  struct al_serdes_grp_obj obj;

  al_serdes_handle_grp_init(alpine_serdes_resource_get(group),
      group, &obj);

  if (mode == ALPINE_SERDES_ETH_MODE_SGMII)
   obj.mode_set_sgmii(&obj);
  else
   obj.mode_set_kr(&obj);

  group_mode->mode = mode;
  group_mode->mode_set = 1;
 }

 mtx_unlock(&group_mode->lock);

 return (0);
}
