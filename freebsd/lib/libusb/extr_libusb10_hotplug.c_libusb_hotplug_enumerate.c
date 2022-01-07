
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device_head {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int libusb_device ;
typedef int libusb_context ;


 int TAILQ_INSERT_TAIL (struct libusb_device_head*,int *,int ) ;
 int hotplug_entry ;
 int libusb_free_device_list (int **,int ) ;
 scalar_t__ libusb_get_device_list (int *,int ***) ;

__attribute__((used)) static int
libusb_hotplug_enumerate(libusb_context *ctx, struct libusb_device_head *phead)
{
 libusb_device **ppdev;
 ssize_t count;
 ssize_t x;

 count = libusb_get_device_list(ctx, &ppdev);
 if (count < 0)
  return (-1);

 for (x = 0; x != count; x++)
  TAILQ_INSERT_TAIL(phead, ppdev[x], hotplug_entry);

 libusb_free_device_list(ppdev, 0);
 return (0);
}
