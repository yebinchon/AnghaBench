
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int wpa_mic_len(int akmp, size_t pmk_len)
{
 switch (akmp) {
 case 129:
 case 130:
  return 24;
 case 134:
 case 133:
 case 132:
 case 131:
  return 0;
 case 135:
  return pmk_len / 2;
 case 128:
  return pmk_len / 2;
 default:
  return 16;
 }
}
