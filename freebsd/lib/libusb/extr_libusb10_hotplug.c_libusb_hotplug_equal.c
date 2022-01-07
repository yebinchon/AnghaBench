
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct libusb20_device {scalar_t__ bus_number; scalar_t__ device_address; int session_data; int ddesc; } ;
struct TYPE_4__ {struct libusb20_device* os_priv; } ;
typedef TYPE_1__ libusb_device ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
libusb_hotplug_equal(libusb_device *_adev, libusb_device *_bdev)
{
 struct libusb20_device *adev = _adev->os_priv;
 struct libusb20_device *bdev = _bdev->os_priv;

 if (adev->bus_number != bdev->bus_number)
  return (0);
 if (adev->device_address != bdev->device_address)
  return (0);
 if (memcmp(&adev->ddesc, &bdev->ddesc, sizeof(adev->ddesc)))
  return (0);
 if (memcmp(&adev->session_data, &bdev->session_data, sizeof(adev->session_data)))
  return (0);
 return (1);
}
