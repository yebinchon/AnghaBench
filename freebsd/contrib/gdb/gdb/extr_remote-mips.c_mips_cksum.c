
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HDR_LENGTH ;

__attribute__((used)) static int
mips_cksum (const unsigned char *hdr, const unsigned char *data, int len)
{
  const unsigned char *p;
  int c;
  int cksum;

  cksum = 0;


  c = HDR_LENGTH - 1;
  p = hdr + 1;
  while (c-- != 0)
    cksum += *p++;

  c = len;
  p = data;
  while (c-- != 0)
    cksum += *p++;

  return cksum;
}
