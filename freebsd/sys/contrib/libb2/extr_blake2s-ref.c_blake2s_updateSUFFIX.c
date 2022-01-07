
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {size_t buflen; int const* buf; } ;
typedef TYPE_1__ blake2s_state ;


 int BLAKE2S_BLOCKBYTES ;
 int blake2s_compress (TYPE_1__*,int const*) ;
 int blake2s_increment_counter (TYPE_1__*,int) ;
 int memcpy (int const*,int const*,size_t) ;

int blake2s_update( blake2s_state *S, const uint8_t *in, size_t inlen )
{
  while( inlen > 0 )
  {
    uint32_t left = S->buflen;
    uint32_t fill = 2 * BLAKE2S_BLOCKBYTES - left;

    if( inlen > fill )
    {
      memcpy( S->buf + left, in, fill );
      S->buflen += fill;
      blake2s_increment_counter( S, BLAKE2S_BLOCKBYTES );
      blake2s_compress( S, S->buf );
      memcpy( S->buf, S->buf + BLAKE2S_BLOCKBYTES, BLAKE2S_BLOCKBYTES );
      S->buflen -= BLAKE2S_BLOCKBYTES;
      in += fill;
      inlen -= fill;
    }
    else
    {
      memcpy( S->buf + left, in, inlen );
      S->buflen += ( uint32_t ) inlen;
      in += inlen;
      inlen -= inlen;
    }
  }

  return 0;
}
