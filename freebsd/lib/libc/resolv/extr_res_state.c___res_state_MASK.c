#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* res_state ;
struct TYPE_10__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TIMEOUT ; 
 TYPE_1__ _res ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  res_init_once ; 
 int /*<<< orphan*/  res_key ; 
 int /*<<< orphan*/  res_keycreate ; 
 int /*<<< orphan*/  res_thr_keycreated ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

res_state
FUNC7(void)
{
	res_state statp;

	if (FUNC4() != 0)
		return FUNC2(&_res);

	if (FUNC5(&res_init_once, res_keycreate) != 0 ||
	    !res_thr_keycreated)
		return (&_res);

	statp = FUNC3(res_key);
	if (statp != NULL)
		return FUNC2(statp);
	statp = FUNC0(1, sizeof(*statp));
	if (statp == NULL)
		return (&_res);
#ifdef __BIND_RES_TEXT
	statp->options = RES_TIMEOUT;			/* Motorola, et al. */
#endif
	if (FUNC6(res_key, statp) == 0)
		return (statp);
	FUNC1(statp);
	return (&_res);
}