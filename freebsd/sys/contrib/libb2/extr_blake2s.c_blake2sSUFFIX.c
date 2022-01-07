
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int blake2s_state ;


 size_t BLAKE2S_KEYBYTES ;
 size_t BLAKE2S_OUTBYTES ;
 int blake2s_final (int *,int *,size_t) ;
 scalar_t__ blake2s_init (int *,size_t) ;
 scalar_t__ blake2s_init_key (int *,size_t,void const*,size_t) ;
 scalar_t__ blake2s_update (int *,int *,size_t) ;

int blake2s( uint8_t *out, const void *in, const void *key, size_t outlen, size_t inlen, size_t keylen )
{
  blake2s_state S[1];


  if ( ((void*)0) == in && inlen > 0 ) return -1;

  if ( ((void*)0) == out ) return -1;

  if ( ((void*)0) == key && keylen > 0) return -1;

  if( !outlen || outlen > BLAKE2S_OUTBYTES ) return -1;

  if( keylen > BLAKE2S_KEYBYTES ) return -1;

  if( keylen > 0 )
  {
    if( blake2s_init_key( S, outlen, key, keylen ) < 0 ) return -1;
  }
  else
  {
    if( blake2s_init( S, outlen ) < 0 ) return -1;
  }

  if( blake2s_update( S, ( uint8_t * )in, inlen ) < 0) return -1;
  return blake2s_final( S, out, outlen );
}
