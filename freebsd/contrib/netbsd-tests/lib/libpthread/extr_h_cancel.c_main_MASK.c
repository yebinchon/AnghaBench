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
typedef  int /*<<< orphan*/  str2 ;
typedef  int /*<<< orphan*/  str1 ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CANCEL_DISABLE ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC6(void)
{
	char str1[] = "You should see this.\n";
	char str2[] = "You should not see this.\n";

#ifdef __NetBSD__
	printf("Cancellation test: Self-cancellation and disabling.\n");
#endif

	FUNC2(FUNC3());

	FUNC4(PTHREAD_CANCEL_DISABLE, NULL);

	FUNC5(STDOUT_FILENO, str1, sizeof(str1)-1);

	FUNC4(PTHREAD_CANCEL_ENABLE, NULL);

	FUNC5(STDOUT_FILENO, str2, sizeof(str2)-1);

	FUNC0(1);
}