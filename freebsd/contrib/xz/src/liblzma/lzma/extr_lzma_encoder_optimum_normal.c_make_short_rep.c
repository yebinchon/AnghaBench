
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_1_is_literal; scalar_t__ back_prev; } ;
typedef TYPE_1__ lzma_optimal ;



__attribute__((used)) static inline void
make_short_rep(lzma_optimal *optimal)
{
 optimal->back_prev = 0;
 optimal->prev_1_is_literal = 0;
}
