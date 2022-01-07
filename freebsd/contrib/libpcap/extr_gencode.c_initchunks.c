
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cur_chunk; TYPE_1__* chunks; } ;
typedef TYPE_2__ compiler_state_t ;
struct TYPE_4__ {int * m; scalar_t__ n_left; } ;


 int NCHUNKS ;

__attribute__((used)) static void
initchunks(compiler_state_t *cstate)
{
 int i;

 for (i = 0; i < NCHUNKS; i++) {
  cstate->chunks[i].n_left = 0;
  cstate->chunks[i].m = ((void*)0);
 }
 cstate->cur_chunk = 0;
}
