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
struct glob_limit {int /*<<< orphan*/  l_brace_cnt; } ;
struct TYPE_5__ {int gl_flags; } ;
typedef  TYPE_1__ glob11_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int GLOB_LIMIT ; 
 scalar_t__ GLOB_LIMIT_BRACE ; 
 int GLOB_NOSPACE ; 
 int /*<<< orphan*/  LBRACE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_1__*,struct glob_limit*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*,struct glob_limit*) ; 

__attribute__((used)) static int
FUNC3(const Char *pattern, glob11_t *pglob, struct glob_limit *limit)
{
	const Char* ptr;

	if ((ptr = FUNC0(pattern, LBRACE)) != NULL) {
		if ((pglob->gl_flags & GLOB_LIMIT) &&
		    limit->l_brace_cnt++ >= GLOB_LIMIT_BRACE) {
			errno = E2BIG;
			return (GLOB_NOSPACE);
		}
		return (FUNC2(ptr, pattern, pglob, limit));
	}

	return (FUNC1(pattern, pglob, limit, NULL));
}