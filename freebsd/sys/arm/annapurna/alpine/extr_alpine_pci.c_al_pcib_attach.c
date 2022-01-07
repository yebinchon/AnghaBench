
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int al_pcib_fixup (int ) ;
 int pci_host_generic_attach (int ) ;

__attribute__((used)) static int
al_pcib_attach(device_t dev)
{
 int rv;

 rv = pci_host_generic_attach(dev);


 if (rv == 0)
  al_pcib_fixup(dev);

 return (rv);
}
