
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int max_ht40_rate(int snr)
{
 if (snr < 3)
  return 13500;
 if (snr < 6)
  return 27000;
 if (snr < 10)
  return 40500;
 if (snr < 15)
  return 54000;
 if (snr < 17)
  return 81000;
 if (snr < 22)
  return 108000;
 if (snr < 24)
  return 121500;
 return 135000;
}
