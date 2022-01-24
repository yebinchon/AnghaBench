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
struct TYPE_5__ {size_t buflen; unsigned char const* buf; } ;
typedef  TYPE_1__ blake2s_state ;

/* Variables and functions */
 size_t BLAKE2S_BLOCKBYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char const*,size_t) ; 

int FUNC3( blake2s_state *S, const void *pin, size_t inlen )
{
  const unsigned char * in = (const unsigned char *)pin;
  if( inlen > 0 )
  {
    size_t left = S->buflen;
    size_t fill = BLAKE2S_BLOCKBYTES - left;
    if( inlen > fill )
    {
      S->buflen = 0;
      FUNC2( S->buf + left, in, fill ); /* Fill buffer */
      FUNC1( S, BLAKE2S_BLOCKBYTES );
      FUNC0( S, S->buf ); /* Compress */
      in += fill; inlen -= fill;
      while(inlen > BLAKE2S_BLOCKBYTES) {
        FUNC1(S, BLAKE2S_BLOCKBYTES);
        FUNC0( S, in );
        in += BLAKE2S_BLOCKBYTES;
        inlen -= BLAKE2S_BLOCKBYTES;
      }
    }
    FUNC2( S->buf + S->buflen, in, inlen );
    S->buflen += inlen;
  }
  return 0;
}