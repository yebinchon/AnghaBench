
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* f; scalar_t__ last_node; } ;
typedef TYPE_1__ blake2s_state ;


 int blake2s_clear_lastnode (TYPE_1__*) ;

__attribute__((used)) static inline int blake2s_clear_lastblock( blake2s_state *S )
{
  if( S->last_node ) blake2s_clear_lastnode( S );

  S->f[0] = 0U;
  return 0;
}
