
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct al_hal_eth_adapter {scalar_t__ mdio_if; scalar_t__ mdio_type; } ;


 scalar_t__ AL_ETH_MDIO_IF_1G_MAC ;
 scalar_t__ AL_ETH_MDIO_TYPE_CLAUSE_22 ;
 int al_dbg (char*,int ,int ,int ,int ) ;
 int al_eth_mdio_10g_mac_type22 (struct al_hal_eth_adapter*,int ,int ,int ,int *) ;
 int al_eth_mdio_10g_mac_type45 (struct al_hal_eth_adapter*,int ,int ,int ,int ,int *) ;
 int al_eth_mdio_1g_mac_write (struct al_hal_eth_adapter*,int ,int ,int ) ;
 int al_eth_mdio_free (struct al_hal_eth_adapter*) ;
 int al_eth_mdio_lock (struct al_hal_eth_adapter*) ;

int al_eth_mdio_write(struct al_hal_eth_adapter *adapter, uint32_t phy_addr, uint32_t device, uint32_t reg, uint16_t val)
{
 int rc;
 al_dbg("eth mdio write: phy_addr %x, device %x, reg %x, val %x\n", phy_addr, device, reg, val);
 rc = al_eth_mdio_lock(adapter);

 if (rc)
  return rc;

 if (adapter->mdio_if == AL_ETH_MDIO_IF_1G_MAC)
  rc = al_eth_mdio_1g_mac_write(adapter, phy_addr, reg, val);
 else
  if (adapter->mdio_type == AL_ETH_MDIO_TYPE_CLAUSE_22)
   rc = al_eth_mdio_10g_mac_type22(adapter, 0, phy_addr, reg, &val);
  else
   rc = al_eth_mdio_10g_mac_type45(adapter, 0, phy_addr, device, reg, &val);

 al_eth_mdio_free(adapter);
 return rc;
}
