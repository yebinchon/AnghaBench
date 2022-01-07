
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
libusb20_strerror(int code)
{
 switch (code) {
 case 128:
  return ("Success");
 case 137:
  return ("I/O error");
 case 138:
  return ("Invalid parameter");
 case 141:
  return ("Permissions error");
 case 134:
  return ("No device");
 case 136:
  return ("Not found");
 case 140:
  return ("Device busy");
 case 129:
  return ("Timeout");
 case 131:
  return ("Overflow");
 case 130:
  return ("Pipe error");
 case 139:
  return ("Interrupted");
 case 133:
  return ("Out of memory");
 case 135:
  return ("Not supported");
 case 132:
  return ("Other error");
 default:
  return ("Unknown error");
 }
}
