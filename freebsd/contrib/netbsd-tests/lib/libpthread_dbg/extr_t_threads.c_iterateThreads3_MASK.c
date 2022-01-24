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
typedef  int /*<<< orphan*/  td_thread_t ;
typedef  int /*<<< orphan*/  td_thread_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TD_ERR_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(td_thread_t *thread, void *arg)
{
	int *counter = (int *)arg;
	td_thread_info_t info;

	FUNC0(FUNC1(thread, &info) == TD_ERR_OK);

	++(*counter);

	return TD_ERR_OK;
}