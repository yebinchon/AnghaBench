
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int valid_cw(int cw)
{
 return (cw == 1 || cw == 3 || cw == 7 || cw == 15 || cw == 31 ||
  cw == 63 || cw == 127 || cw == 255 || cw == 511 || cw == 1023 ||
  cw == 2047 || cw == 4095 || cw == 8191 || cw == 16383 ||
  cw == 32767);
}
