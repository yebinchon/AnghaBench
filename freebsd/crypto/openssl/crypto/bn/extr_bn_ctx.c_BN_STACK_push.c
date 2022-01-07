
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int size; unsigned int* indexes; } ;
typedef TYPE_1__ BN_STACK ;


 int BN_CTX_START_FRAMES ;
 int BN_F_BN_STACK_PUSH ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned int*) ;
 unsigned int* OPENSSL_malloc (int) ;
 int memcpy (unsigned int*,unsigned int*,int) ;

__attribute__((used)) static int BN_STACK_push(BN_STACK *st, unsigned int idx)
{
    if (st->depth == st->size) {

        unsigned int newsize =
            st->size ? (st->size * 3 / 2) : BN_CTX_START_FRAMES;
        unsigned int *newitems;

        if ((newitems = OPENSSL_malloc(sizeof(*newitems) * newsize)) == ((void*)0)) {
            BNerr(BN_F_BN_STACK_PUSH, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (st->depth)
            memcpy(newitems, st->indexes, sizeof(*newitems) * st->depth);
        OPENSSL_free(st->indexes);
        st->indexes = newitems;
        st->size = newsize;
    }
    st->indexes[(st->depth)++] = idx;
    return 1;
}
