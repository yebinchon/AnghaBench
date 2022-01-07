
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static inline void
write64ne(uint8_t *buf, uint64_t num)
{
 *(uint64_t *)buf = num;
 return;
}
