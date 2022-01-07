
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int wpa_kek_len(int akmp, size_t pmk_len)
{
 switch (akmp) {
 case 133:
 case 131:
  return 64;
 case 129:
 case 134:
 case 132:
 case 130:
  return 32;
 case 135:
  return pmk_len <= 32 ? 16 : 32;
 case 128:
  return pmk_len <= 32 ? 16 : 32;
 default:
  return 16;
 }
}
