
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owned; } ;


 TYPE_1__ Giant ;
 int USB_PROC_MAX ;
 int device_run_interrupts (int ) ;
 int usb_do_process (scalar_t__) ;
 int usb_pci_root ;
 int usb_proc_level ;
 scalar_t__ usb_process ;

void
usb_idle(void)
{
 int old_level = usb_proc_level;
 int old_giant = Giant.owned;
 int worked;

 device_run_interrupts(usb_pci_root);

 do {
  worked = 0;
  Giant.owned = 0;

  while (++usb_proc_level < USB_PROC_MAX)
   worked |= usb_do_process(usb_process + usb_proc_level);

  usb_proc_level = old_level;
  Giant.owned = old_giant;

 } while (worked);
}
