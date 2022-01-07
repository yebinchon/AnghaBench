
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
libusb_error_name(int code)
{
 switch (code) {
 case 128:
  return ("LIBUSB_SUCCESS");
 case 137:
  return ("LIBUSB_ERROR_IO");
 case 138:
  return ("LIBUSB_ERROR_INVALID_PARAM");
 case 141:
  return ("LIBUSB_ERROR_ACCESS");
 case 134:
  return ("LIBUSB_ERROR_NO_DEVICE");
 case 136:
  return ("LIBUSB_ERROR_NOT_FOUND");
 case 140:
  return ("LIBUSB_ERROR_BUSY");
 case 129:
  return ("LIBUSB_ERROR_TIMEOUT");
 case 131:
  return ("LIBUSB_ERROR_OVERFLOW");
 case 130:
  return ("LIBUSB_ERROR_PIPE");
 case 139:
  return ("LIBUSB_ERROR_INTERRUPTED");
 case 133:
  return ("LIBUSB_ERROR_NO_MEM");
 case 135:
  return ("LIBUSB_ERROR_NOT_SUPPORTED");
 case 132:
  return ("LIBUSB_ERROR_OTHER");
 default:
  return ("LIBUSB_ERROR_UNKNOWN");
 }
}
