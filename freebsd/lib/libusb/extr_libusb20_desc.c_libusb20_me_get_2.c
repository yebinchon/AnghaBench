
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct libusb20_me_struct {int dummy; } ;


 int libusb20_me_get_1 (struct libusb20_me_struct const*,int) ;

uint16_t
libusb20_me_get_2(const struct libusb20_me_struct *ie, uint16_t offset)
{
 return (libusb20_me_get_1(ie, offset) |
     (libusb20_me_get_1(ie, offset + 1) << 8));
}
