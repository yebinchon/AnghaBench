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
struct blk_buf {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  Dcp ; 
 int /*<<< orphan*/ * const* Dvp ; 
 scalar_t__ FUNC0 (struct blk_buf*) ; 
 int /*<<< orphan*/  STRNULL ; 
 struct blk_buf* FUNC1 () ; 
 int /*<<< orphan*/ ** FUNC2 (struct blk_buf*) ; 
 int /*<<< orphan*/  bb_free ; 
 int /*<<< orphan*/  FUNC3 (struct blk_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_buf*) ; 
 scalar_t__ dolcnt ; 
 scalar_t__ dolp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_buf*) ; 

__attribute__((used)) static Char **
FUNC9(Char *const *v)
{
    struct blk_buf *bb = FUNC1();
    Char **vec;

    Dvp = v;
    Dcp = STRNULL;		/* Setup input vector for Dreadc */
    FUNC6(0);
    FUNC7(0);			/* Clear out any old peeks (at error) */
    dolp = 0;
    dolcnt = 0;			/* Clear out residual $ expands (...) */
    FUNC4(bb, bb_free);
    while (FUNC0(bb))
	continue;
    FUNC3(bb);
    FUNC5(bb);
    vec = FUNC2(bb);
    FUNC8(bb);
    return vec;
}