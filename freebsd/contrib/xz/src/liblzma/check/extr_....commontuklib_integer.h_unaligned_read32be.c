
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
unaligned_read32be(const uint8_t *buf)
{
 uint32_t num = (uint32_t)buf[0] << 24;
 num |= (uint32_t)buf[1] << 16;
 num |= (uint32_t)buf[2] << 8;
 num |= (uint32_t)buf[3];
 return num;
}
