
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int dummy; } ;
struct TYPE_2__ {int (* do_request_sync ) (struct libusb20_device*,struct LIBUSB20_CONTROL_SETUP_DECODED*,void*,int *,int ,int ) ;} ;


 int stub1 (struct libusb20_device*,struct LIBUSB20_CONTROL_SETUP_DECODED*,void*,int *,int ,int ) ;

int
libusb20_dev_request_sync(struct libusb20_device *pdev,
    struct LIBUSB20_CONTROL_SETUP_DECODED *setup, void *data,
    uint16_t *pactlen, uint32_t timeout, uint8_t flags)
{
 int error;

 error = pdev->methods->do_request_sync(pdev,
     setup, data, pactlen, timeout, flags);
 return (error);
}
