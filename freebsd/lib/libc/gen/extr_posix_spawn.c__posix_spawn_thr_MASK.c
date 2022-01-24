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
struct posix_spawn_args {char** envp; scalar_t__ error; int /*<<< orphan*/  argv; int /*<<< orphan*/  path; scalar_t__ use_env_path; int /*<<< orphan*/ * fa; int /*<<< orphan*/ * sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char* const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char* const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char** environ ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *data)
{
	struct posix_spawn_args *psa;
	char * const *envp;

	psa = data;
	if (psa->sa != NULL) {
		psa->error = FUNC4(*psa->sa);
		if (psa->error)
			FUNC2(127);
	}
	if (psa->fa != NULL) {
		psa->error = FUNC3(*psa->fa);
		if (psa->error)
			FUNC2(127);
	}
	envp = psa->envp != NULL ? psa->envp : environ;
	if (psa->use_env_path)
		FUNC1(psa->path, psa->argv, envp);
	else
		FUNC0(psa->path, psa->argv, envp);
	psa->error = errno;

	/* This is called in such a way that it must not exit. */
	FUNC2(127);
}