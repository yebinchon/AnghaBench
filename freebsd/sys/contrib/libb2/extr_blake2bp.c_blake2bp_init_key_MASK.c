#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_6__ {TYPE_3__** S; scalar_t__ outlen; TYPE_2__* R; scalar_t__ buflen; scalar_t__* buf; } ;
typedef  TYPE_1__ blake2bp_state ;
struct TYPE_8__ {int last_node; } ;
struct TYPE_7__ {int last_node; } ;

/* Variables and functions */
 int BLAKE2B_BLOCKBYTES ; 
 size_t BLAKE2B_KEYBYTES ; 
 size_t BLAKE2B_OUTBYTES ; 
 size_t PARALLELISM_DEGREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,scalar_t__,scalar_t__,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 

int FUNC6( blake2bp_state *S, size_t outlen, const void *key, size_t keylen )
{
  if( !outlen || outlen > BLAKE2B_OUTBYTES ) return -1;

  if( !key || !keylen || keylen > BLAKE2B_KEYBYTES ) return -1;

  FUNC4( S->buf, 0, sizeof( S->buf ) );
  S->buflen = 0;

  if( FUNC2( S->R, ( uint8_t ) outlen, ( uint8_t ) keylen ) < 0 )
    return -1;

  for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
    if( FUNC1( S->S[i], ( uint8_t ) outlen, ( uint8_t ) keylen, i ) < 0 )
      return -1;

  S->R->last_node = 1;
  S->S[PARALLELISM_DEGREE - 1]->last_node = 1;
  S->outlen = ( uint8_t ) outlen;
  {
    uint8_t block[BLAKE2B_BLOCKBYTES];
    FUNC4( block, 0, BLAKE2B_BLOCKBYTES );
    FUNC3( block, key, keylen );

    for( size_t i = 0; i < PARALLELISM_DEGREE; ++i )
      FUNC0( S->S[i], block, BLAKE2B_BLOCKBYTES );

    FUNC5( block, BLAKE2B_BLOCKBYTES ); /* Burn the key from stack */
  }
  return 0;
}