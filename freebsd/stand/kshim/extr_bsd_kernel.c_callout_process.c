
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * callout_msg ;
 int ticks ;
 int usb_proc_msignal (scalar_t__,int *,int *) ;
 scalar_t__ usb_process ;

void
callout_process(int timeout)
{
 ticks += timeout;
 usb_proc_msignal(usb_process + 2, &callout_msg[0], &callout_msg[1]);
}
