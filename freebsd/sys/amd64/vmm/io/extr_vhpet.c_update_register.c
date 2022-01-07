
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static __inline void
update_register(uint64_t *regptr, uint64_t data, uint64_t mask)
{

 *regptr &= ~mask;
 *regptr |= (data & mask);
}
