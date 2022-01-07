
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* curve448_scalar_t ;
typedef int c448_word_t ;
typedef int c448_dword_t ;
struct TYPE_6__ {int* limb; } ;


 unsigned int C448_SCALAR_LIMBS ;
 int WBITS ;
 int sc_p ;
 int sc_subx (TYPE_1__*,int*,int ,int ,int) ;

void curve448_scalar_add(curve448_scalar_t out, const curve448_scalar_t a,
                         const curve448_scalar_t b)
{
    c448_dword_t chain = 0;
    unsigned int i;

    for (i = 0; i < C448_SCALAR_LIMBS; i++) {
        chain = (chain + a->limb[i]) + b->limb[i];
        out->limb[i] = (c448_word_t)chain;
        chain >>= WBITS;
    }
    sc_subx(out, out->limb, sc_p, sc_p, (c448_word_t)chain);
}
