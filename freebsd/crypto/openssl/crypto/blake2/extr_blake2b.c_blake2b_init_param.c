
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * h; } ;
typedef int BLAKE2B_PARAM ;
typedef TYPE_1__ BLAKE2B_CTX ;


 int assert (int) ;
 int blake2b_init0 (TYPE_1__*) ;
 int load64 (int const*) ;

__attribute__((used)) static void blake2b_init_param(BLAKE2B_CTX *S, const BLAKE2B_PARAM *P)
{
    size_t i;
    const uint8_t *p = (const uint8_t *)(P);
    blake2b_init0(S);



    assert(sizeof(BLAKE2B_PARAM) == 64);

    for (i = 0; i < 8; ++i) {
        S->h[i] ^= load64(p + sizeof(S->h[i]) * i);
    }
}
