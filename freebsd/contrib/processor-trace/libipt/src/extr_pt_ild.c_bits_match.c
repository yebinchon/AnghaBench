
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int bits_match(uint8_t x, uint8_t mask, uint8_t target)
{
 return (x & mask) == target;
}
