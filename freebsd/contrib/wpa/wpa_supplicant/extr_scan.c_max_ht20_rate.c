
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int max_ht20_rate(int snr)
{
 if (snr < 6)
  return 6500;
 if (snr < 8)
  return 13000;
 if (snr < 13)
  return 19500;
 if (snr < 17)
  return 26000;
 if (snr < 20)
  return 39000;
 if (snr < 23)
  return 52000;
 if (snr < 24)
  return 58500;
 return 65000;
}
