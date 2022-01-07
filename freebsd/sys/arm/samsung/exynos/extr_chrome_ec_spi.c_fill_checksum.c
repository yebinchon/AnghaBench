
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
fill_checksum(uint8_t *data_out, int len)
{
 int res;
 int i;

 res = 0;
 for (i = 0; i < len; i++) {
  res += data_out[i];
 }

 data_out[len] = (res & 0xff);

 return (0);
}
