
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static const char * get_direction_str(u8 direction)
{
 switch (direction) {
 case 129:
  return "Downlink";
 case 128:
  return "Uplink";
 case 130:
  return "Bi-directional";
 default:
  return "N/A";
 }
}
