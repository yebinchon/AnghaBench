#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t buflen; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ blake2b_state ;

/* Variables and functions */
 int BLAKE2B_BLOCKBYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC3( blake2b_state *S, const uint8_t *in, size_t inlen )
{
  while( inlen > 0 )
  {
    uint32_t left = S->buflen;
    uint32_t fill = 2 * BLAKE2B_BLOCKBYTES - left;

    if( inlen > fill )
    {
      FUNC2( S->buf + left, in, fill ); // Fill buffer
      S->buflen += fill;
      FUNC1( S, BLAKE2B_BLOCKBYTES );
      FUNC0( S, S->buf ); // Compress
      FUNC2( S->buf, S->buf + BLAKE2B_BLOCKBYTES, BLAKE2B_BLOCKBYTES ); // Shift buffer left
      S->buflen -= BLAKE2B_BLOCKBYTES;
      in += fill;
      inlen -= fill;
    }
    else // inlen <= fill
    {
      FUNC2( S->buf + left, in, inlen );
      S->buflen += ( uint32_t ) inlen; // Be lazy, do not compress
      in += inlen;
      inlen -= inlen;
    }
  }

  return 0;
}