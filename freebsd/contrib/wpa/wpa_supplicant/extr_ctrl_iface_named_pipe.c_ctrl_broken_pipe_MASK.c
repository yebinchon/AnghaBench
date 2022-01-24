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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_PIPE ; 
 scalar_t__ ERROR_BROKEN_PIPE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(HANDLE pipe, int used)
{
	DWORD err;

	if (FUNC1(pipe, NULL, 0, NULL, NULL, NULL))
		return 0;

	err = FUNC0();
	if (err == ERROR_BROKEN_PIPE || (err == ERROR_BAD_PIPE && used))
		return 1;
	return 0;
}