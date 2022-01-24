#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_6__ {int last_node; } ;
typedef  TYPE_1__ blake2s_state ;

/* Variables and functions */
 int BLAKE2S_BLOCKBYTES ; 
 size_t BLAKE2S_KEYBYTES ; 
 int BLAKE2S_OUTBYTES ; 
 int PARALLELISM_DEGREE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int) ; 

int FUNC9( uint8_t *out, const void *in, const void *key, size_t outlen, size_t inlen, size_t keylen )
{
  uint8_t hash[PARALLELISM_DEGREE][BLAKE2S_OUTBYTES];
  blake2s_state S[PARALLELISM_DEGREE][1];
  blake2s_state FS[1];

  /* Verify parameters */
  if ( NULL == in && inlen > 0 ) return -1;

  if ( NULL == out ) return -1;

  if ( NULL == key && keylen > 0 ) return -1;

  if( !outlen || outlen > BLAKE2S_OUTBYTES ) return -1;

  if( keylen > BLAKE2S_KEYBYTES ) return -1;

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
    if( FUNC2( S[i], ( uint8_t ) outlen, ( uint8_t ) keylen, i ) < 0 )
      return -1;

  S[PARALLELISM_DEGREE - 1]->last_node = 1; // mark last node

  if( keylen > 0 )
  {
    uint8_t block[BLAKE2S_BLOCKBYTES];
    FUNC5( block, 0, BLAKE2S_BLOCKBYTES );
    FUNC4( block, key, keylen );

    for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
      FUNC1( S[i], block, BLAKE2S_BLOCKBYTES );

    FUNC8( block, BLAKE2S_BLOCKBYTES ); /* Burn the key from stack */
  }

#if defined(_OPENMP)
  omp_set_num_threads(PARALLELISM_DEGREE);
  #pragma omp parallel shared(S,hash)
#else

  for( size_t id__ = 0; id__ < PARALLELISM_DEGREE; ++id__ )
#endif
  {
#if defined(_OPENMP)
    size_t      id__ = ( size_t ) omp_get_thread_num();
#endif
    size_t inlen__ = inlen;
    const uint8_t *in__ = ( const uint8_t * )in;
    in__ += id__ * BLAKE2S_BLOCKBYTES;

    while( inlen__ >= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES )
    {
      FUNC1( S[id__], in__, BLAKE2S_BLOCKBYTES );
      in__ += PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
      inlen__ -= PARALLELISM_DEGREE * BLAKE2S_BLOCKBYTES;
    }

    if( inlen__ > id__ * BLAKE2S_BLOCKBYTES )
    {
      const size_t left = inlen__ - id__ * BLAKE2S_BLOCKBYTES;
      const size_t len = left <= BLAKE2S_BLOCKBYTES ? left : BLAKE2S_BLOCKBYTES;
      FUNC1( S[id__], in__, len );
    }

    FUNC0( S[id__], hash[id__], BLAKE2S_OUTBYTES );
  }

  if( FUNC3( FS, ( uint8_t ) outlen, ( uint8_t ) keylen ) < 0 )
    return -1;

  FS->last_node = 1;

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
    FUNC1( FS, hash[i], BLAKE2S_OUTBYTES );

  return FUNC0( FS, out, outlen );
}