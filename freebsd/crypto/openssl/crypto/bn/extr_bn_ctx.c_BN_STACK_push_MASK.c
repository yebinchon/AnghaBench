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
struct TYPE_3__ {int depth; int size; unsigned int* indexes; } ;
typedef  TYPE_1__ BN_STACK ;

/* Variables and functions */
 int BN_CTX_START_FRAMES ; 
 int /*<<< orphan*/  BN_F_BN_STACK_PUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,int) ; 

__attribute__((used)) static int FUNC4(BN_STACK *st, unsigned int idx)
{
    if (st->depth == st->size) {
        /* Need to expand */
        unsigned int newsize =
            st->size ? (st->size * 3 / 2) : BN_CTX_START_FRAMES;
        unsigned int *newitems;

        if ((newitems = FUNC2(sizeof(*newitems) * newsize)) == NULL) {
            FUNC0(BN_F_BN_STACK_PUSH, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (st->depth)
            FUNC3(newitems, st->indexes, sizeof(*newitems) * st->depth);
        FUNC1(st->indexes);
        st->indexes = newitems;
        st->size = newsize;
    }
    st->indexes[(st->depth)++] = idx;
    return 1;
}