
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * h; } ;
typedef TYPE_1__ blake2b_state ;


 int * blake2b_IV ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline int blake2b_init0( blake2b_state *S )
{
  memset( S, 0, sizeof( blake2b_state ) );

  for( int i = 0; i < 8; ++i ) S->h[i] = blake2b_IV[i];

  return 0;
}
