
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 rssi_to_rcpi(int rssi)
{
 if (!rssi)
  return 255;
 if (rssi < -110)
  return 0;
 if (rssi > 0)
  return 220;
 return (rssi + 110) * 2;
}
