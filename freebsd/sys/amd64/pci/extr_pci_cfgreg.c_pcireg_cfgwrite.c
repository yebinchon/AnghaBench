
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (int,int) ;
 int outl (int,int) ;
 int outw (int,int) ;
 int pci_cfgdisable () ;
 int pci_cfgenable (int,int,int,int,int) ;
 int pcicfg_mtx ;

__attribute__((used)) static void
pcireg_cfgwrite(int bus, int slot, int func, int reg, int data, int bytes)
{
 int port;

 mtx_lock_spin(&pcicfg_mtx);
 port = pci_cfgenable(bus, slot, func, reg, bytes);
 if (port != 0) {
  switch (bytes) {
  case 1:
   outb(port, data);
   break;
  case 2:
   outw(port, data);
   break;
  case 4:
   outl(port, data);
   break;
  }
  pci_cfgdisable();
 }
 mtx_unlock_spin(&pcicfg_mtx);
}
