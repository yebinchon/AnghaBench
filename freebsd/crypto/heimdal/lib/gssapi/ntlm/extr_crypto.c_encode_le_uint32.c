
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
encode_le_uint32(uint32_t n, unsigned char *p)
{
  p[0] = (n >> 0) & 0xFF;
  p[1] = (n >> 8) & 0xFF;
  p[2] = (n >> 16) & 0xFF;
  p[3] = (n >> 24) & 0xFF;
}
