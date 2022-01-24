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
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUE_NULL ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *directory, const char *filename, int error)
{
	char pathname[PATH_MAX];
	token_t *return32_token;

	return32_token = FUNC1(FUNC0(error), -1);
	if (return32_token == NULL)
		FUNC2(EX_UNAVAILABLE, "au_to_return32");
	(void)FUNC3(pathname, PATH_MAX, "%s_record", filename);
	FUNC4(directory, pathname, return32_token, AUE_NULL);
}