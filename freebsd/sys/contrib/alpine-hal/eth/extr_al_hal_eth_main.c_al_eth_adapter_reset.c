
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {int name; } ;


 int EPERM ;
 int al_dbg (char*,int ) ;

int al_eth_adapter_reset(struct al_hal_eth_adapter *adapter)
{
 al_dbg("eth [%s]: reset controller's UDMA\n", adapter->name);

 return -EPERM;
}
