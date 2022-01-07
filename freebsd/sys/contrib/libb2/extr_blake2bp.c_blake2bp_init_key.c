
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {TYPE_3__** S; scalar_t__ outlen; TYPE_2__* R; scalar_t__ buflen; scalar_t__* buf; } ;
typedef TYPE_1__ blake2bp_state ;
struct TYPE_8__ {int last_node; } ;
struct TYPE_7__ {int last_node; } ;


 int BLAKE2B_BLOCKBYTES ;
 size_t BLAKE2B_KEYBYTES ;
 size_t BLAKE2B_OUTBYTES ;
 size_t PARALLELISM_DEGREE ;
 int blake2b_update (TYPE_3__*,scalar_t__*,int) ;
 scalar_t__ blake2bp_init_leaf (TYPE_3__*,scalar_t__,scalar_t__,size_t) ;
 scalar_t__ blake2bp_init_root (TYPE_2__*,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__*,void const*,size_t) ;
 int memset (scalar_t__*,int ,int) ;
 int secure_zero_memory (scalar_t__*,int) ;

int blake2bp_init_key( blake2bp_state *S, size_t outlen, const void *key, size_t keylen )
{
  if( !outlen || outlen > BLAKE2B_OUTBYTES ) return -1;

  if( !key || !keylen || keylen > BLAKE2B_KEYBYTES ) return -1;

  memset( S->buf, 0, sizeof( S->buf ) );
  S->buflen = 0;

  if( blake2bp_init_root( S->R, ( uint8_t ) outlen, ( uint8_t ) keylen ) < 0 )
    return -1;

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
    if( blake2bp_init_leaf( S->S[i], ( uint8_t ) outlen, ( uint8_t ) keylen, i ) < 0 )
      return -1;

  S->R->last_node = 1;
  S->S[PARALLELISM_DEGREE - 1]->last_node = 1;
  S->outlen = ( uint8_t ) outlen;
  {
    uint8_t block[BLAKE2B_BLOCKBYTES];
    memset( block, 0, BLAKE2B_BLOCKBYTES );
    memcpy( block, key, keylen );

    for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
      blake2b_update( S->S[i], block, BLAKE2B_BLOCKBYTES );

    secure_zero_memory( block, BLAKE2B_BLOCKBYTES );
  }
  return 0;
}
