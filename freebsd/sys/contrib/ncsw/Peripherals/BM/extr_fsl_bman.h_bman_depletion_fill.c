
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bman_depletion {scalar_t__* __state; } ;



__attribute__((used)) static __inline__ void bman_depletion_fill(struct bman_depletion *c)
{
    c->__state[0] = c->__state[1] = (uint32_t)~0;
}
