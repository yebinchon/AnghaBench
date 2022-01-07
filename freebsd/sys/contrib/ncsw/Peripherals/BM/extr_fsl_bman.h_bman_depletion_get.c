
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bman_depletion {int* __state; } ;


 int __bmdep_bit (int ) ;
 size_t __bmdep_word (int ) ;

__attribute__((used)) static __inline__ int bman_depletion_get(const struct bman_depletion *c, uint8_t bpid)
{
    return (int)(c->__state[__bmdep_word(bpid)] & __bmdep_bit(bpid));
}
