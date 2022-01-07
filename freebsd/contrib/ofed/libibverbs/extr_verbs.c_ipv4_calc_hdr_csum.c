
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int __sum16 ;



__attribute__((used)) static inline __sum16 ipv4_calc_hdr_csum(uint16_t *data, unsigned int num_hwords)
{
 unsigned int i = 0;
 uint32_t sum = 0;

 for (i = 0; i < num_hwords; i++)
  sum += *(data++);

 sum = (sum & 0xffff) + (sum >> 16);

 return (__sum16)~sum;
}
