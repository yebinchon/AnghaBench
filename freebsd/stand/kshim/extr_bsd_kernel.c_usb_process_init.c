
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int MTX_DEF ;
 int MTX_RECURSE ;
 size_t USB_PROC_MAX ;
 int mtx_init (int *,char*,int *,int) ;
 int usb_proc_mtx ;
 int * usb_process ;
 int usb_process_init_sub (int *) ;

__attribute__((used)) static void
usb_process_init(void *arg)
{
 uint8_t x;

 mtx_init(&usb_proc_mtx, "usb-proc-mtx", ((void*)0), MTX_DEF | MTX_RECURSE);

 for (x = 0; x != USB_PROC_MAX; x++)
  usb_process_init_sub(&usb_process[x]);

}
