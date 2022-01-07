
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int LIBUSB_TRANSFER_CANCELLED ;
 int LIBUSB_TRANSFER_COMPLETED ;
 int LIBUSB_TRANSFER_ERROR ;
 int LIBUSB_TRANSFER_NO_DEVICE ;
 int LIBUSB_TRANSFER_OVERFLOW ;
 int LIBUSB_TRANSFER_STALL ;
 int LIBUSB_TRANSFER_TIMED_OUT ;

__attribute__((used)) static int
libusb10_convert_error(uint8_t status)
{
 ;

 switch (status) {
 case 129:
 case 133:
  return (LIBUSB_TRANSFER_COMPLETED);
 case 131:
  return (LIBUSB_TRANSFER_OVERFLOW);
 case 132:
  return (LIBUSB_TRANSFER_NO_DEVICE);
 case 130:
  return (LIBUSB_TRANSFER_STALL);
 case 134:
  return (LIBUSB_TRANSFER_CANCELLED);
 case 128:
  return (LIBUSB_TRANSFER_TIMED_OUT);
 default:
  return (LIBUSB_TRANSFER_ERROR);
 }
}
