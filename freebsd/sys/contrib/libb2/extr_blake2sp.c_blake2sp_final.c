
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t outlen; size_t buflen; int R; int * S; int * buf; } ;
typedef TYPE_1__ blake2sp_state ;


 size_t BLAKE2S_BLOCKBYTES ;
 int BLAKE2S_OUTBYTES ;
 int PARALLELISM_DEGREE ;
 int blake2s_final (int ,int *,size_t) ;
 int blake2s_update (int ,int *,int) ;

int blake2sp_final( blake2sp_state *S, uint8_t *out, size_t outlen )
{
  uint8_t hash[PARALLELISM_DEGREE][BLAKE2S_OUTBYTES];

  if(S->outlen != outlen) return -1;

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
  {
    if( S->buflen > i * BLAKE2S_BLOCKBYTES )
    {
      size_t left = S->buflen - i * BLAKE2S_BLOCKBYTES;

      if( left > BLAKE2S_BLOCKBYTES ) left = BLAKE2S_BLOCKBYTES;

      blake2s_update( S->S[i], S->buf + i * BLAKE2S_BLOCKBYTES, left );
    }

    blake2s_final( S->S[i], hash[i], BLAKE2S_OUTBYTES );
  }

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
    blake2s_update( S->R, hash[i], BLAKE2S_OUTBYTES );

  blake2s_final( S->R, out, outlen );
  return 0;
}
