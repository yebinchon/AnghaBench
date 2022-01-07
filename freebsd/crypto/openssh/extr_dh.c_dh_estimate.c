
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



u_int
dh_estimate(int bits)
{
 if (bits <= 112)
  return 2048;
 if (bits <= 128)
  return 3072;
 if (bits <= 192)
  return 7680;
 return 8192;
}
