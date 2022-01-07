
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int max_vht80_rate(int snr)
{
 if (snr < 1)
  return 0;
 if (snr < 2)
  return 29300;
 if (snr < 5)
  return 58500;
 if (snr < 9)
  return 87800;
 if (snr < 11)
  return 117000;
 if (snr < 15)
  return 175500;
 if (snr < 16)
  return 234000;
 if (snr < 18)
  return 263300;
 if (snr < 20)
  return 292500;
 if (snr < 22)
  return 351000;
 return 390000;
}
