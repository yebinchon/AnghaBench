
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct al_hal_eth_adapter {TYPE_2__* mac_regs_base; int name; } ;
struct TYPE_3__ {int mdio_cmd; int mdio_regaddr; int mdio_data; int mdio_cfg_status; } ;
struct TYPE_4__ {TYPE_1__ mac_10g; } ;


 int AL_BIT (int) ;
 int EIO ;
 int al_err (char*,int ,char const*,...) ;
 int al_eth_mdio_10g_mac_wait_busy (struct al_hal_eth_adapter*) ;
 int al_reg_read16 (int*) ;
 int al_reg_read32 (int *) ;
 int al_reg_write16 (int*,int) ;

__attribute__((used)) static int al_eth_mdio_10g_mac_type45(
 struct al_hal_eth_adapter *adapter,
 int read, uint32_t port_addr, uint32_t device, uint32_t reg, uint16_t *val)
{
 int rc;
 const char *op = (read == 1) ? "read":"write";
 uint32_t mdio_cfg_status;
 uint16_t mdio_cmd;


 rc = al_eth_mdio_10g_mac_wait_busy(adapter);
 if (rc) {
  al_err(" %s mdio %s failed. HW is busy\n", adapter->name, op);
  return rc;
 }

 mdio_cmd = (uint16_t)(0x1F & device);
 mdio_cmd |= (0x1F & port_addr) << 5;
 al_reg_write16(&adapter->mac_regs_base->mac_10g.mdio_cmd,
   mdio_cmd);


 al_reg_write16(&adapter->mac_regs_base->mac_10g.mdio_regaddr, reg);

 rc = al_eth_mdio_10g_mac_wait_busy(adapter);
 if (rc) {
  al_err(" %s mdio %s (address frame) failed on timeout\n", adapter->name, op);
  return rc;
 }


 if (read) {
  mdio_cmd |= AL_BIT(15);
  al_reg_write16(
   (uint16_t *)&adapter->mac_regs_base->mac_10g.mdio_cmd,
   mdio_cmd);
 } else {
  al_reg_write16(
   (uint16_t *)&adapter->mac_regs_base->mac_10g.mdio_data,
   *val);
 }

 rc = al_eth_mdio_10g_mac_wait_busy(adapter);
 if (rc) {
  al_err(" %s mdio %s failed on timeout\n", adapter->name, op);
  return rc;
 }

 mdio_cfg_status = al_reg_read32(&adapter->mac_regs_base->mac_10g.mdio_cfg_status);

 if (mdio_cfg_status & AL_BIT(1)){
  al_err(" %s mdio %s failed on error. port 0x%x, device 0x%x reg 0x%x\n",
   adapter->name, op, port_addr, device, reg);
   return -EIO;
 }
 if (read)
  *val = al_reg_read16(
   (uint16_t *)&adapter->mac_regs_base->mac_10g.mdio_data);
 return 0;
}
