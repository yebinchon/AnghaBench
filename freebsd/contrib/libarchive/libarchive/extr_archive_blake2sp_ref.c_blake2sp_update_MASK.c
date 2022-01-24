#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t buflen; unsigned char const* buf; int /*<<< orphan*/ * S; } ;
typedef  TYPE_1__ blake2sp_state ;

/* Variables and functions */
 size_t BLAKE2S_BLOCKBYTES ; 
 size_t PARALLELISM_DEGREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 
 size_t FUNC2 () ; 

int FUNC3( blake2sp_state *S, const void *pin, size_t inlen )
{
  const unsigned char * in = (const unsigned char *)pin;
  size_t left = S->buflen;
  size_t fill = sizeof( S->buf ) - left;
  size_t i;

  if( left && inlen >= fill )
  {
    FUNC1( S->buf + left, in, fill );

    for( i = 0; i < PARALLELISM_DEGREE; ++i )
      FUNC0( S->S[i], S->buf + i * BLAKE2S_BLOCKBYTES, BLAKE2S_BLOCKBYTES );

    in += fill;
    inlen -= fill;
    left = 0;
  }

#if defined(_OPENMP)
  #pragma omp parallel shared(S), num_threads(PARALLELISM_DEGREE)
#else
  for( i = 0; i < PARALLELISM_DEGREE; ++i )
#endif
  {
#if defined(_OPENMP)
    size_t      i = omp_get_thread_num();
#endif
    size_t inlen__ = inlen;
    const unsigned char *in__ = ( const unsigned char * )in;
    in__ += i * BLAKE2S_BLOCKBYTES;

    while( inlen__ >= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES )
    {
      FUNC0( S->S[i], in__, BLAKE2S_BLOCKBYTES );
      in__ += PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
      inlen__ -= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
    }
  }

  in += inlen - inlen % ( PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES );
  inlen %= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;

  if( inlen > 0 )
    FUNC1( S->buf + left, in, inlen );

  S->buflen = left + inlen;
  return 0;
}