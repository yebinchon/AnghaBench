#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  blake2s_state ;

/* Variables and functions */
 size_t BLAKE2S_KEYBYTES ; 
 size_t BLAKE2S_OUTBYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,void const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int FUNC4( uint8_t *out, const void *in, const void *key, size_t outlen, size_t inlen, size_t keylen )
{
  blake2s_state S[1];

  /* Verify parameters */
  if ( NULL == in && inlen > 0 ) return -1;

  if ( NULL == out ) return -1;

  if ( NULL == key && keylen > 0 ) return -1;

  if( !outlen || outlen > BLAKE2S_OUTBYTES ) return -1;

  if( keylen > BLAKE2S_KEYBYTES ) return -1;

  if( keylen > 0 )
  {
    if( FUNC2( S, outlen, key, keylen ) < 0 ) return -1;
  }
  else
  {
    if( FUNC1( S, outlen ) < 0 ) return -1;
  }

  if( FUNC3( S, ( uint8_t * )in, inlen ) < 0) return -1;
  return FUNC0( S, out, outlen );
}