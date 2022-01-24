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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  pdinfo_t ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 

void
FUNC9(EFI_HANDLE h, const char *env_fn)
{
	pdinfo_t *dp;
	struct stat st;
	int fd = -1;
	char *env = NULL;

	dp = FUNC2(h);
	if (dp == NULL)
		return;
	FUNC7(dp);
	if (FUNC8(env_fn, &st) != 0)
		return;
	fd = FUNC5(env_fn, O_RDONLY);
	if (fd == -1)
		return;
	env = FUNC4(st.st_size + 1);
	if (env == NULL)
		goto out;
	if (FUNC6(fd, env, st.st_size) != st.st_size)
		goto out;
	env[st.st_size] = '\0';
	FUNC0(env);
out:
	FUNC3(env);
	FUNC1(fd);
}