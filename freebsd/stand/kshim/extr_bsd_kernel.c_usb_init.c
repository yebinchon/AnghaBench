
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysinit_data ;
 int sysinit_run (int ) ;

void
usb_init(void)
{
 sysinit_run(sysinit_data);
}
