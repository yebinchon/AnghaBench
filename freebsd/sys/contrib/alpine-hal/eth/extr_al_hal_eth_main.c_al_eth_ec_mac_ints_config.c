
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {scalar_t__ udma_id; int unit_regs; int mac_ints_base; int ec_ints_base; int name; } ;


 int AL_BIT (int) ;
 int AL_INT_GROUP_A ;
 int AL_INT_GROUP_B ;
 int AL_INT_GROUP_C ;
 int AL_INT_GROUP_D ;
 int EPERM ;
 int INT_CONTROL_GRP_CLEAR_ON_READ ;
 int INT_CONTROL_GRP_SET_ON_POSEDGE ;
 int al_dbg (char*,int ) ;
 int al_iofic_config (int ,int ,int) ;
 int al_iofic_unmask (int ,int ,int) ;

int al_eth_ec_mac_ints_config(struct al_hal_eth_adapter *adapter)
{

 al_dbg("eth [%s]: enable ethernet and mac interrupts\n", adapter->name);


 if (adapter->udma_id != 0)
  return -EPERM;


 al_iofic_config(adapter->ec_ints_base, AL_INT_GROUP_A,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->ec_ints_base, AL_INT_GROUP_B,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->ec_ints_base, AL_INT_GROUP_C,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->ec_ints_base, AL_INT_GROUP_D,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);


 al_iofic_unmask(adapter->ec_ints_base, AL_INT_GROUP_A, 8);


 al_iofic_config(adapter->mac_ints_base, AL_INT_GROUP_A,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->mac_ints_base, AL_INT_GROUP_B,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->mac_ints_base, AL_INT_GROUP_C,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);
 al_iofic_config(adapter->mac_ints_base, AL_INT_GROUP_D,
  INT_CONTROL_GRP_SET_ON_POSEDGE | INT_CONTROL_GRP_CLEAR_ON_READ);


 al_iofic_unmask(adapter->mac_ints_base, AL_INT_GROUP_B, AL_BIT(14));

 al_iofic_unmask(adapter->unit_regs, AL_INT_GROUP_D, AL_BIT(11));
 return 0;
}
