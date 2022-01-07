
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
struct TYPE_3__ {int* poly_accum; scalar_t__ msg_len; int hash; } ;


 int nh_reset (int *) ;

__attribute__((used)) static int uhash_reset(uhash_ctx_t pc)
{
    nh_reset(&pc->hash);
    pc->msg_len = 0;
    pc->poly_accum[0] = 1;
    return 1;
}
