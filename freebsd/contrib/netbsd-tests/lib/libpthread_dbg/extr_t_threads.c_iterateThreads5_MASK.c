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
 scalar_t__ TD_ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC4(td_thread_t *thread, void *arg)
{
	int *counter = (int *)arg;
	/* Arbitrarily short string buffer */
	char name[3];

	FUNC0(FUNC3(thread, name, sizeof(name)) == TD_ERR_OK);

	FUNC1("Thread name: %s\n", name);

	/* strlen(3) does not count including a '\0' character */
	FUNC0(FUNC2(name) < sizeof(name));

	++(*counter);

	return TD_ERR_OK;
}