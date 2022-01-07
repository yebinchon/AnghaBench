
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_hal_eth_adapter {scalar_t__ udma_id; int name; int ec_ints_base; int mac_ints_base; } ;


 int AL_INT_GROUP_A ;
 int AL_INT_GROUP_B ;
 int AL_INT_GROUP_C ;
 int AL_INT_GROUP_D ;
 int EPERM ;
 int al_dbg (char*,int ,...) ;
 int al_iofic_read_cause (int ,int ) ;

int al_eth_ec_mac_isr(struct al_hal_eth_adapter *adapter)
{
 uint32_t cause;
 al_dbg("[%s]: ethernet interrupts handler\n", adapter->name);


 if (adapter->udma_id != 0)
  return -EPERM;


 cause = al_iofic_read_cause(adapter->ec_ints_base, AL_INT_GROUP_A);
 al_dbg("[%s]: ethernet group A cause 0x%08x\n", adapter->name, cause);
 if (cause & 1)
 {
  cause = al_iofic_read_cause(adapter->mac_ints_base, AL_INT_GROUP_A);
  al_dbg("[%s]: mac group A cause 0x%08x\n", adapter->name, cause);

  cause = al_iofic_read_cause(adapter->mac_ints_base, AL_INT_GROUP_B);
  al_dbg("[%s]: mac group B cause 0x%08x\n", adapter->name, cause);

  cause = al_iofic_read_cause(adapter->mac_ints_base, AL_INT_GROUP_C);
  al_dbg("[%s]: mac group C cause 0x%08x\n", adapter->name, cause);

  cause = al_iofic_read_cause(adapter->mac_ints_base, AL_INT_GROUP_D);
  al_dbg("[%s]: mac group D cause 0x%08x\n", adapter->name, cause);
 }
 cause = al_iofic_read_cause(adapter->ec_ints_base, AL_INT_GROUP_B);
 al_dbg("[%s]: ethernet group B cause 0x%08x\n", adapter->name, cause);
 cause = al_iofic_read_cause(adapter->ec_ints_base, AL_INT_GROUP_C);
 al_dbg("[%s]: ethernet group C cause 0x%08x\n", adapter->name, cause);
 cause = al_iofic_read_cause(adapter->ec_ints_base, AL_INT_GROUP_D);
 al_dbg("[%s]: ethernet group D cause 0x%08x\n", adapter->name, cause);

 return 0;
}
