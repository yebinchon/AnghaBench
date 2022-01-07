
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_pcie_port {int port_id; } ;


 int AL_PCIE_LINKUP_WAIT_INTERVAL ;
 int AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC ;
 int ETIMEDOUT ;
 int al_dbg (char*,int ,...) ;
 scalar_t__ al_pcie_check_link (struct al_pcie_port*,int *) ;
 int al_udelay (int ) ;

int
al_pcie_link_up_wait(struct al_pcie_port *pcie_port, uint32_t timeout_ms)
{
 int wait_count = timeout_ms * AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC;

 while (wait_count-- > 0) {
  if (al_pcie_check_link(pcie_port, ((void*)0))) {
   al_dbg("PCIe_%d: <<<<<<<<< Link up >>>>>>>>>\n", pcie_port->port_id);
   return 0;
  } else
   al_dbg("PCIe_%d: No link up, %d attempts remaining\n",
    pcie_port->port_id, wait_count);

  al_udelay(AL_PCIE_LINKUP_WAIT_INTERVAL);
 }
 al_dbg("PCIE_%d: link is not established in time\n",
    pcie_port->port_id);

 return ETIMEDOUT;
}
