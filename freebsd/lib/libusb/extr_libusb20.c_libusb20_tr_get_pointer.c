
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {scalar_t__ nTransfer; struct libusb20_transfer* pTransfer; } ;



struct libusb20_transfer *
libusb20_tr_get_pointer(struct libusb20_device *pdev, uint16_t trIndex)
{
 if (trIndex >= pdev->nTransfer) {
  return (((void*)0));
 }
 return (pdev->pTransfer + trIndex);
}
