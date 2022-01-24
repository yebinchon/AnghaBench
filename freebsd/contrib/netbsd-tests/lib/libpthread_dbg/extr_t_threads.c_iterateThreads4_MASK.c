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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PTHREAD_MAX_NAMELEN_NP ; 
 scalar_t__ TD_ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC3(td_thread_t *thread, void *arg)
{
	int *counter = (int *)arg;
	char name[PTHREAD_MAX_NAMELEN_NP];

	FUNC0(FUNC2(thread, name, sizeof(name)) == TD_ERR_OK);

	FUNC1("Thread name: %s\n", name);

	++(*counter);

	return TD_ERR_OK;
}