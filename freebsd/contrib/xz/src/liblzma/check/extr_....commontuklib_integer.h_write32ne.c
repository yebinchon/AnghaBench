
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void
write32ne(uint8_t *buf, uint32_t num)
{
 *(uint32_t *)buf = num;
 return;
}
