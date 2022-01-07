
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* __state; } ;
struct qman_cgrs {TYPE_1__ q; } ;


 int __CGR_SHIFT (int) ;
 size_t __CGR_WORD (int) ;

__attribute__((used)) static __inline__ void QMAN_CGRS_UNSET(struct qman_cgrs *c, int num)
{
    c->q.__state[__CGR_WORD(num)] &= ~(0x80000000 >> __CGR_SHIFT(num));
}
