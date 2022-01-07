
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct al_hal_eth_adapter {int name; TYPE_1__ rx_udma; TYPE_1__ tx_udma; } ;


 int UDMA_DISABLE ;
 int al_dbg (char*,int ) ;
 int al_udma_state_set_wait (TYPE_1__*,int ) ;
 int al_warn (char*,int ,int) ;

int al_eth_adapter_stop(struct al_hal_eth_adapter *adapter)
{
 int rc;

 al_dbg("eth [%s]: stop controller's UDMA\n", adapter->name);


 rc = al_udma_state_set_wait(&adapter->tx_udma, UDMA_DISABLE);
 if (rc != 0) {
  al_warn("[%s] warn: failed to change state, error %d\n",
    adapter->tx_udma.name, rc);
  return rc;
 }

 al_dbg("eth [%s]: controller's TX UDMA stopped\n",
   adapter->name);

 rc = al_udma_state_set_wait(&adapter->rx_udma, UDMA_DISABLE);
 if (rc != 0) {
  al_warn("[%s] warn: failed to change state, error %d\n",
    adapter->rx_udma.name, rc);
  return rc;
 }

 al_dbg("eth [%s]: controller's RX UDMA stopped\n",
   adapter->name);
 return 0;
}
