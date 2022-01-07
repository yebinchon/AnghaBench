
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void
unaligned_write32le(uint8_t *buf, uint32_t num)
{
 buf[0] = (uint8_t)num;
 buf[1] = (uint8_t)(num >> 8);
 buf[2] = (uint8_t)(num >> 16);
 buf[3] = (uint8_t)(num >> 24);
 return;
}
