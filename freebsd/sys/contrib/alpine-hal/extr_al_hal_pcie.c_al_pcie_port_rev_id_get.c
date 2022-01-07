
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_port {int rev_id; } ;



int al_pcie_port_rev_id_get(struct al_pcie_port *pcie_port)
{
 return pcie_port->rev_id;
}
