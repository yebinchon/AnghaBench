
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct libusb_control_setup {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bmRequestType; } ;


 void* htole16 (int ) ;

void
libusb_fill_control_setup(uint8_t *buf, uint8_t bmRequestType,
    uint8_t bRequest, uint16_t wValue,
    uint16_t wIndex, uint16_t wLength)
{
 struct libusb_control_setup *req = (struct libusb_control_setup *)buf;


 req->bmRequestType = bmRequestType;
 req->bRequest = bRequest;
 req->wValue = htole16(wValue);
 req->wIndex = htole16(wIndex);
 req->wLength = htole16(wLength);
}
