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
struct TYPE_3__ {int fanout; int depth; int /*<<< orphan*/  personal; int /*<<< orphan*/  salt; int /*<<< orphan*/  reserved; scalar_t__ inner_length; scalar_t__ node_depth; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; scalar_t__ key_length; int /*<<< orphan*/  digest_length; } ;
typedef  TYPE_1__ BLAKE2B_PARAM ;
typedef  int /*<<< orphan*/  BLAKE2B_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  BLAKE2B_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(BLAKE2B_CTX *c)
{
    BLAKE2B_PARAM P[1];
    P->digest_length = BLAKE2B_DIGEST_LENGTH;
    P->key_length    = 0;
    P->fanout        = 1;
    P->depth         = 1;
    FUNC2(P->leaf_length, 0);
    FUNC3(P->node_offset, 0);
    P->node_depth    = 0;
    P->inner_length  = 0;
    FUNC1(P->reserved, 0, sizeof(P->reserved));
    FUNC1(P->salt,     0, sizeof(P->salt));
    FUNC1(P->personal, 0, sizeof(P->personal));
    FUNC0(c, P);
    return 1;
}