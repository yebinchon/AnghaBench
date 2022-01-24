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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *************************) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *************************) ; 
 int /*<<< orphan*/  arg_1 ; 
 int /*<<< orphan*/  arg_2 ; 
 int /*<<< orphan*/  arg_3 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxa_handler_2 ; 
 int /*<<< orphan*/  cxa_handler_3 ; 
 int /*<<< orphan*/  cxa_handler_4 ; 
 int /*<<< orphan*/  cxa_handler_5 ; 
 int /*<<< orphan*/ ************************ dso_handle_1 ; 
 int /*<<< orphan*/ ************************ dso_handle_2 ; 
 int /*<<< orphan*/ ************************ dso_handle_3 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int exiting_state ; 
 int /*<<< orphan*/  normal_handler_0 ; 
 int /*<<< orphan*/  normal_handler_1 ; 

int
FUNC5(int argc, char *argv[])
{

	exiting_state = 5;

	FUNC0(0 == FUNC3(normal_handler_0));
	FUNC0(0 == FUNC3(normal_handler_1));
#ifdef __FreeBSD__
	ASSERT(0 == __cxa_atexit(cxa_handler_4, &arg_1, dso_handle_1));
	ASSERT(0 == __cxa_atexit(cxa_handler_5, &arg_1, dso_handle_1));
	ASSERT(0 == __cxa_atexit(cxa_handler_3, &arg_2, dso_handle_2));
	ASSERT(0 == __cxa_atexit(cxa_handler_2, &arg_3, dso_handle_3));

	__cxa_finalize(dso_handle_1);
	__cxa_finalize(dso_handle_2);
#else
	FUNC0(0 == FUNC1(cxa_handler_4, &arg_1, &dso_handle_1));
	FUNC0(0 == FUNC1(cxa_handler_5, &arg_1, &dso_handle_1));
	FUNC0(0 == FUNC1(cxa_handler_3, &arg_2, &dso_handle_2));
	FUNC0(0 == FUNC1(cxa_handler_2, &arg_3, &dso_handle_3));

	FUNC2(&dso_handle_1);
	FUNC2(&dso_handle_2);
#endif
	FUNC4(0);
}