
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int dummy; } ;


 int Giant ;
 int LIST_INSERT_HEAD (int *,struct usb_driver*,int ) ;
 int linux_driver_list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_linux_driver_list ;
 int usb_needs_explore_all () ;

void
usb_linux_register(void *arg)
{
 struct usb_driver *drv = arg;

 mtx_lock(&Giant);
 LIST_INSERT_HEAD(&usb_linux_driver_list, drv, linux_driver_list);
 mtx_unlock(&Giant);

 usb_needs_explore_all();
}
