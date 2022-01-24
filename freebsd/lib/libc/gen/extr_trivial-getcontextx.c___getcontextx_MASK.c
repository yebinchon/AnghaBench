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
typedef  int /*<<< orphan*/  ucontext_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

ucontext_t *
FUNC4(void)
{
	char *ctx;
	int error;

	ctx = FUNC3(FUNC1());
	if (ctx == NULL)
		return (NULL);
	if (FUNC0(ctx) == -1) {
		error = errno;
		FUNC2(ctx);
		errno = error;
		return (NULL);
	}
	return ((ucontext_t *)ctx);
}