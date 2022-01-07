
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t bin2bcd(uint8_t bin)
{
    return (bin / 10) << 4 | (bin % 10);
}
