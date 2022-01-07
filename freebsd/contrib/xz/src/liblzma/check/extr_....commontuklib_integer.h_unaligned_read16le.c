
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t
unaligned_read16le(const uint8_t *buf)
{
 uint16_t num = ((uint16_t)buf[0]) | ((uint16_t)buf[1] << 8);
 return num;
}
