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
typedef  int u_int ;
struct fuzz {size_t slen; int strategies; int /*<<< orphan*/ * seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUZZ_MAX ; 
 int /*<<< orphan*/  SIGINFO ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct fuzz* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fuzz*) ; 
 struct fuzz* last_fuzz ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  siginfo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct fuzz *
FUNC7(u_int strategies, const void *p, size_t l)
{
	struct fuzz *ret = FUNC2(sizeof(*ret), 1);

	FUNC1(p != NULL);
	FUNC1(ret != NULL);
	ret->seed = FUNC4(l);
	FUNC1(ret->seed != NULL);
	FUNC5(ret->seed, p, l);
	ret->slen = l;
	ret->strategies = strategies;

	FUNC1(ret->slen < SIZE_MAX / 8);
	FUNC1(ret->strategies <= (FUZZ_MAX|(FUZZ_MAX-1)));

	FUNC0(("begin, ret = %p", ret));

	FUNC3(ret);

#ifdef SIGINFO
	last_fuzz = ret;
	signal(SIGINFO, siginfo);
#endif

	return ret;
}