#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  outlen; int /*<<< orphan*/ * h; } ;
typedef  TYPE_1__ blake2s_state ;
struct TYPE_7__ {int /*<<< orphan*/  digest_length; } ;
typedef  TYPE_2__ blake2s_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 

int FUNC2( blake2s_state *S, const blake2s_param *P )
{
  const unsigned char *p = ( const unsigned char * )( P );
  size_t i;

  FUNC0( S );

  /* IV XOR ParamBlock */
  for( i = 0; i < 8; ++i )
    S->h[i] ^= FUNC1( &p[i * 4] );

  S->outlen = P->digest_length;
  return 0;
}