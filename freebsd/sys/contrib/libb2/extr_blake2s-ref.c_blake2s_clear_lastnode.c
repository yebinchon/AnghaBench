
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* f; } ;
typedef TYPE_1__ blake2s_state ;



__attribute__((used)) static inline int blake2s_clear_lastnode( blake2s_state *S )
{
  S->f[1] = 0U;
  return 0;
}
