
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int debug; } ;



void
libusb20_dev_set_debug(struct libusb20_device *pdev, int debug)
{
 pdev->debug = debug;
 return;
}
