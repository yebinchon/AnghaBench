
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BCM2835_MBOX_POWER_ID_USB_HCD ;
 int TRUE ;
 int bcm2835_mbox_set_power_state (int ,int ) ;
 int device_printf (int ,char*,int) ;
 int dwc_otg_attach (int ) ;

__attribute__((used)) static int
bcm283x_dwc_otg_attach(device_t dev)
{
 int err;

 err = bcm2835_mbox_set_power_state(BCM2835_MBOX_POWER_ID_USB_HCD, TRUE);
 if (err)
  device_printf(dev, "failed to set power state, err=%d\n", err);

 return (dwc_otg_attach(dev));
}
