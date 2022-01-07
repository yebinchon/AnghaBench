
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
compute_checksum (int csum, char *buf, int len)
{
  int i;

  for (i = 0; i < len; ++i)
    csum += (unsigned char) buf[i];

  csum %= 253;
  return csum;
}
