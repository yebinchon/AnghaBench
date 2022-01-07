
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct al_pcie_port {int port_id; } ;


 int ENOSYS ;
 int al_err (char*,int ) ;

int
al_pcie_link_change_width(struct al_pcie_port *pcie_port,
         uint8_t width __attribute__((__unused__)))
{
 al_err("PCIe %d: link change width not implemented\n",
  pcie_port->port_id);

 return -ENOSYS;
}
