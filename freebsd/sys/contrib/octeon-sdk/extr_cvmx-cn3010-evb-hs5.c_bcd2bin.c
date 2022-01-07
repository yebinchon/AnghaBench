
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t bcd2bin(uint8_t bcd)
{
    return (bcd >> 4) * 10 + (bcd & 0xf);
}
