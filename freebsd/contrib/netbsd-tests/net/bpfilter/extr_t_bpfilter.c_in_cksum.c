
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static uint16_t
in_cksum(void *data, size_t len)
{
 uint16_t *buf = data;
 unsigned sum;

 for (sum = 0; len > 1; len -= 2)
  sum += *buf++;
 if (len)
  sum += *(uint8_t *)buf;

 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);

 return ~sum;
}
