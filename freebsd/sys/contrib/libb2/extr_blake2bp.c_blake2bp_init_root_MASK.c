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
typedef  void* uint8_t ;
struct TYPE_6__ {void* outlen; } ;
typedef  TYPE_1__ blake2b_state ;
struct TYPE_7__ {int depth; int node_depth; void* digest_length; int /*<<< orphan*/  personal; int /*<<< orphan*/  salt; int /*<<< orphan*/  reserved; int /*<<< orphan*/  inner_length; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; int /*<<< orphan*/  fanout; void* key_length; } ;
typedef  TYPE_2__ blake2b_param ;

/* Variables and functions */
 int /*<<< orphan*/  BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  PARALLELISM_DEGREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( blake2b_state *S, uint8_t outlen, uint8_t keylen )
{
  blake2b_param P[1];
  P->digest_length = outlen;
  P->key_length = keylen;
  P->fanout = PARALLELISM_DEGREE;
  P->depth = 2;
  FUNC2(&P->leaf_length, 0);
  FUNC3(&P->node_offset, 0);
  P->node_depth = 1;
  P->inner_length = BLAKE2B_OUTBYTES;
  FUNC1( P->reserved, 0, sizeof( P->reserved ) );
  FUNC1( P->salt, 0, sizeof( P->salt ) );
  FUNC1( P->personal, 0, sizeof( P->personal ) );
  FUNC0( S, P );
  S->outlen = P->digest_length;
  return 0;
}