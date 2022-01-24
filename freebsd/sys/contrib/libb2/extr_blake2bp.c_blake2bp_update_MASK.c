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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_3__ {size_t buflen; int /*<<< orphan*/  const* buf; int /*<<< orphan*/ * S; } ;
typedef  TYPE_1__ blake2bp_state ;

/* Variables and functions */
 size_t BLAKE2B_BLOCKBYTES ; 
 size_t PARALLELISM_DEGREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

int FUNC4( blake2bp_state *S, const uint8_t *in, size_t inlen )
{
  size_t left = S->buflen;
  size_t fill = sizeof( S->buf ) - left;

  if( left && inlen >= fill )
  {
    FUNC1( S->buf + left, in, fill );

    for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
      FUNC0( S->S[i], S->buf + i * BLAKE2B_BLOCKBYTES, BLAKE2B_BLOCKBYTES );

    in += fill;
    inlen -= fill;
    left = 0;
  }

#if defined(_OPENMP)
  omp_set_num_threads(PARALLELISM_DEGREE);
  #pragma omp parallel shared(S)
#else
  for( size_t id__ = 0; id__ < PARALLELISM_DEGREE; ++id__ )
#endif
  {
#if defined(_OPENMP)
    size_t      id__ = ( size_t ) omp_get_thread_num();
#endif
    size_t inlen__ = inlen;
    const uint8_t *in__ = ( const uint8_t * )in;
    in__ += id__ * BLAKE2B_BLOCKBYTES;

    while( inlen__ >= PARALLELISM_DEGREE * BLAKE2B_BLOCKBYTES )
    {
      FUNC0( S->S[id__], in__, BLAKE2B_BLOCKBYTES );
      in__ += PARALLELISM_DEGREE * BLAKE2B_BLOCKBYTES;
      inlen__ -= PARALLELISM_DEGREE * BLAKE2B_BLOCKBYTES;
    }
  }

  in += inlen - inlen % ( PARALLELISM_DEGREE * BLAKE2B_BLOCKBYTES );
  inlen %= PARALLELISM_DEGREE * BLAKE2B_BLOCKBYTES;

  if( inlen > 0 )
    FUNC1( S->buf + left, in, inlen );

  S->buflen = ( uint32_t ) left + ( uint32_t ) inlen;
  return 0;
}