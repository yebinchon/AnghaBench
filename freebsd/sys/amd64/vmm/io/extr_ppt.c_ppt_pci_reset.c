
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int max (int,int) ;
 int pci_power_reset (int ) ;
 scalar_t__ pcie_flr (int ,int ,int) ;
 int pcie_get_max_completion_timeout (int ) ;

__attribute__((used)) static void
ppt_pci_reset(device_t dev)
{

 if (pcie_flr(dev,
      max(pcie_get_max_completion_timeout(dev) / 1000, 10), 1))
  return;

 pci_power_reset(dev);
}
