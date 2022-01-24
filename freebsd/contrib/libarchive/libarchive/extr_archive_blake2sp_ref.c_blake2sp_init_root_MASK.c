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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  blake2s_state ;
struct TYPE_3__ {int depth; int node_depth; int /*<<< orphan*/  personal; int /*<<< orphan*/  salt; int /*<<< orphan*/  inner_length; int /*<<< orphan*/  xof_length; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; int /*<<< orphan*/  fanout; void* key_length; void* digest_length; } ;
typedef  TYPE_1__ blake2s_param ;

/* Variables and functions */
 int /*<<< orphan*/  BLAKE2S_OUTBYTES ; 
 int /*<<< orphan*/  PARALLELISM_DEGREE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( blake2s_state *S, size_t outlen, size_t keylen )
{
  blake2s_param P[1];
  P->digest_length = (uint8_t)outlen;
  P->key_length = (uint8_t)keylen;
  P->fanout = PARALLELISM_DEGREE;
  P->depth = 2;
  FUNC3( &P->leaf_length, 0 );
  FUNC3( &P->node_offset, 0 );
  FUNC2( &P->xof_length, 0 );
  P->node_depth = 1;
  P->inner_length = BLAKE2S_OUTBYTES;
  FUNC1( P->salt, 0, sizeof( P->salt ) );
  FUNC1( P->personal, 0, sizeof( P->personal ) );
  return FUNC0( S, P );
}