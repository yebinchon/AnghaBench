
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct libusb20_me_struct {scalar_t__ len; int ptr; } ;


 scalar_t__ LIBUSB20_ADD_BYTES (int ,scalar_t__) ;

uint8_t
libusb20_me_get_1(const struct libusb20_me_struct *ie, uint16_t offset)
{
 if (offset < ie->len) {
  return (*((uint8_t *)LIBUSB20_ADD_BYTES(ie->ptr, offset)));
 }
 return (0);
}
