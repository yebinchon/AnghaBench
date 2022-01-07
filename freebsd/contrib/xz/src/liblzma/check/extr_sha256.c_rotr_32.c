
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



__attribute__((used)) static inline uint32_t
rotr_32(uint32_t num, unsigned amount)
{
        return (num >> amount) | (num << (32 - amount));
}
