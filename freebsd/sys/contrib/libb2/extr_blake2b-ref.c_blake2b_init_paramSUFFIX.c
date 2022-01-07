
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int outlen; int * h; } ;
typedef TYPE_1__ blake2b_state ;
struct TYPE_7__ {int digest_length; } ;
typedef TYPE_2__ blake2b_param ;


 int blake2b_init0 (TYPE_1__*) ;
 int load64 (int *) ;

int blake2b_init_param( blake2b_state *S, const blake2b_param *P )
{
  blake2b_init0( S );
  uint8_t *p = ( uint8_t * )( P );


  for( size_t i = 0; i < 8; ++i )
    S->h[i] ^= load64( p + sizeof( S->h[i] ) * i );

  S->outlen = P->digest_length;
  return 0;
}
