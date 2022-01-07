
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ depth; int * indexes; } ;
typedef TYPE_1__ BN_STACK ;



__attribute__((used)) static void BN_STACK_init(BN_STACK *st)
{
    st->indexes = ((void*)0);
    st->depth = st->size = 0;
}
