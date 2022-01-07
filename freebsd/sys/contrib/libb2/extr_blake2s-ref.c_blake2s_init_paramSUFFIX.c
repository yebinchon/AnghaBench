
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int outlen; int * h; } ;
typedef TYPE_1__ blake2s_state ;
struct TYPE_7__ {int digest_length; } ;
typedef TYPE_2__ blake2s_param ;


 int blake2s_init0 (TYPE_1__*) ;
 int load32 (int *) ;

int blake2s_init_param( blake2s_state *S, const blake2s_param *P )
{
  blake2s_init0( S );
  uint32_t *p = ( uint32_t * )( P );


  for( size_t i = 0; i < 8; ++i )
    S->h[i] ^= load32( &p[i] );

  S->outlen = P->digest_length;
  return 0;
}
