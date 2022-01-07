
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {size_t outlen; TYPE_3__** S; TYPE_2__* R; scalar_t__ buflen; int * buf; } ;
typedef TYPE_1__ blake2sp_state ;
struct TYPE_8__ {int last_node; } ;
struct TYPE_7__ {int last_node; } ;


 int BLAKE2S_BLOCKBYTES ;
 size_t BLAKE2S_KEYBYTES ;
 size_t BLAKE2S_OUTBYTES ;
 size_t PARALLELISM_DEGREE ;
 int blake2s_update (TYPE_3__*,int *,int) ;
 scalar_t__ blake2sp_init_leaf (TYPE_3__*,size_t,size_t,int ) ;
 scalar_t__ blake2sp_init_root (TYPE_2__*,size_t,size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int memset (int *,int ,int) ;
 int secure_zero_memory (int *,int) ;

int blake2sp_init_key( blake2sp_state *S, size_t outlen, const void *key, size_t keylen )
{
  size_t i;

  if( !outlen || outlen > BLAKE2S_OUTBYTES ) return -1;

  if( !key || !keylen || keylen > BLAKE2S_KEYBYTES ) return -1;

  memset( S->buf, 0, sizeof( S->buf ) );
  S->buflen = 0;
  S->outlen = outlen;

  if( blake2sp_init_root( S->R, outlen, keylen ) < 0 )
    return -1;

  for( i = 0; i < PARALLELISM_DEGREE; ++i )
    if( blake2sp_init_leaf( S->S[i], outlen, keylen, (uint32_t)i ) < 0 ) return -1;

  S->R->last_node = 1;
  S->S[PARALLELISM_DEGREE - 1]->last_node = 1;
  {
    uint8_t block[BLAKE2S_BLOCKBYTES];
    memset( block, 0, BLAKE2S_BLOCKBYTES );
    memcpy( block, key, keylen );

    for( i = 0; i < PARALLELISM_DEGREE; ++i )
      blake2s_update( S->S[i], block, BLAKE2S_BLOCKBYTES );

    secure_zero_memory( block, BLAKE2S_BLOCKBYTES );
  }
  return 0;
}
