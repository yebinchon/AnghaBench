
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hostapd_hw_mode_txt(int mode)
{
 switch (mode) {
 case 131:
  return "IEEE 802.11a";
 case 129:
  return "IEEE 802.11b";
 case 128:
  return "IEEE 802.11g";
 case 130:
  return "IEEE 802.11ad";
 default:
  return "UNKNOWN";
 }
}
