
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * v; } ;
typedef TYPE_1__ block ;


 unsigned int ARGON2_QWORDS_IN_BLOCK ;
 int STORE64_LE (int *,int ) ;

__attribute__((used)) static void
store_block(void *output, const block *src)
{
    unsigned i;
    for (i = 0; i < ARGON2_QWORDS_IN_BLOCK; ++i) {
        STORE64_LE((uint8_t *) output + i * sizeof(src->v[i]), src->v[i]);
    }
}
