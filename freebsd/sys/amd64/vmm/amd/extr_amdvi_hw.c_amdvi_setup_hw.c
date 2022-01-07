
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int dev; } ;
typedef int device_t ;


 int amdvi_add_sysctl (struct amdvi_softc*) ;
 int amdvi_alloc_intr_resources (struct amdvi_softc*) ;
 int amdvi_hw_enable_iotlb (struct amdvi_softc*) ;
 int amdvi_init_cmd (struct amdvi_softc*) ;
 int amdvi_init_dte (struct amdvi_softc*) ;
 int amdvi_init_event (struct amdvi_softc*) ;
 int amdvi_print_dev_cap (struct amdvi_softc*) ;
 int amdvi_print_pci_cap (int ) ;
 int device_printf (int ,char*) ;

int
amdvi_setup_hw(struct amdvi_softc *softc)
{
 device_t dev;
 int status;

 dev = softc->dev;

 amdvi_hw_enable_iotlb(softc);

 amdvi_print_dev_cap(softc);

 if ((status = amdvi_print_pci_cap(dev)) != 0) {
  device_printf(dev, "PCI capability.\n");
  return (status);
 }
 if ((status = amdvi_init_cmd(softc)) != 0) {
  device_printf(dev, "Couldn't configure command buffer.\n");
  return (status);
 }
 if ((status = amdvi_init_event(softc)) != 0) {
  device_printf(dev, "Couldn't configure event buffer.\n");
  return (status);
 }
 if ((status = amdvi_init_dte(softc)) != 0) {
  device_printf(dev, "Couldn't configure device table.\n");
  return (status);
 }
 if ((status = amdvi_alloc_intr_resources(softc)) != 0) {
  return (status);
 }
 amdvi_add_sysctl(softc);
 return (0);
}
