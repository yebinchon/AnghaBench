
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {size_t buflen; int const* buf; int * S; } ;
typedef TYPE_1__ blake2sp_state ;


 size_t BLAKE2S_BLOCKBYTES ;
 size_t PARALLELISM_DEGREE ;
 int blake2s_update (int ,int const*,size_t) ;
 int memcpy (int const*,int const*,size_t) ;
 int omp_get_thread_num () ;
 int omp_set_num_threads (size_t) ;

int blake2sp_update( blake2sp_state *S, const uint8_t *in, size_t inlen )
{
  size_t left = S->buflen;
  size_t fill = sizeof( S->buf ) - left;

  if( left && inlen >= fill )
  {
    memcpy( S->buf + left, in, fill );

    for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
      blake2s_update( S->S[i], S->buf + i * BLAKE2S_BLOCKBYTES, BLAKE2S_BLOCKBYTES );

    in += fill;
    inlen -= fill;
    left = 0;
  }





  for( size_t id__ = 0; id__ < PARALLELISM_DEGREE; ++id__ )

  {



    size_t inlen__ = inlen;
    const uint8_t *in__ = ( const uint8_t * )in;
    in__ += id__ * BLAKE2S_BLOCKBYTES;

    while( inlen__ >= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES )
    {
      blake2s_update( S->S[id__], in__, BLAKE2S_BLOCKBYTES );
      in__ += PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
      inlen__ -= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
    }
  }

  in += inlen - inlen % ( PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES );
  inlen %= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;

  if( inlen > 0 )
    memcpy( S->buf + left, in, inlen );

  S->buflen = ( uint32_t ) left + ( uint32_t ) inlen;
  return 0;
}
