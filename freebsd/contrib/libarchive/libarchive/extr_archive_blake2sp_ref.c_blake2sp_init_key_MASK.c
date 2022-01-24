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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {size_t outlen; TYPE_3__** S; TYPE_2__* R; scalar_t__ buflen; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ blake2sp_state ;
struct TYPE_8__ {int last_node; } ;
struct TYPE_7__ {int last_node; } ;

/* Variables and functions */
 int BLAKE2S_BLOCKBYTES ; 
 size_t BLAKE2S_KEYBYTES ; 
 size_t BLAKE2S_OUTBYTES ; 
 size_t PARALLELISM_DEGREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6( blake2sp_state *S, size_t outlen, const void *key, size_t keylen )
{
  size_t i;

  if( !outlen || outlen > BLAKE2S_OUTBYTES ) return -1;

  if( !key || !keylen || keylen > BLAKE2S_KEYBYTES ) return -1;

  FUNC4( S->buf, 0, sizeof( S->buf ) );
  S->buflen = 0;
  S->outlen = outlen;

  if( FUNC2( S->R, outlen, keylen ) < 0 )
    return -1;

  for( i = 0; i < PARALLELISM_DEGREE; ++i )
    if( FUNC1( S->S[i], outlen, keylen, (uint32_t)i ) < 0 ) return -1;

  S->R->last_node = 1;
  S->S[PARALLELISM_DEGREE - 1]->last_node = 1;
  {
    uint8_t block[BLAKE2S_BLOCKBYTES];
    FUNC4( block, 0, BLAKE2S_BLOCKBYTES );
    FUNC3( block, key, keylen );

    for( i = 0; i < PARALLELISM_DEGREE; ++i )
      FUNC0( S->S[i], block, BLAKE2S_BLOCKBYTES );

    FUNC5( block, BLAKE2S_BLOCKBYTES ); /* Burn the key from stack */
  }
  return 0;
}