
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






__attribute__((used)) static const char *
dest_description(uint32_t dest)
{
 switch (dest) {
  case 130:
   return "AUTO";
   break;

  case 128:
   return "HEADPHONES";
   break;

  case 129:
   return "HDMI";
   break;
  default:
   return "UNKNOWN";
   break;
 }
}
