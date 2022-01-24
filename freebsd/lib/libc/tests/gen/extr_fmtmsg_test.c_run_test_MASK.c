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
typedef  int ssize_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ MM_OK ; 
 int STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (long,char const*,int,char const*,char const*,char const*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char,int) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (int,char*,int) ; 
 char* FUNC11 (char*,size_t) ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC13(long classification, const char *label, int severity,
    const char *text, const char *action, const char *tag)
{
	int pip[2];
	pid_t pid, wpid;
	char *result, *p;
	size_t resultsize;
	ssize_t n;
	int status;

	if (FUNC9(pip) == -1)
		FUNC3(2, "pipe");
	pid = FUNC5();
	if (pid == -1)
		FUNC3(2, "fork");
	if (pid == 0) {
		FUNC1(pip[0]);
		if (pip[1] != STDERR_FILENO &&
		    FUNC2(pip[1], STDERR_FILENO) == -1)
			FUNC0(2);
		if (FUNC4(classification, label, severity, text, action, tag)
		    != MM_OK)
			FUNC0(1);
		else
			FUNC0(0);
	}
	FUNC1(pip[1]);
	resultsize = 1024;
	result = FUNC7(resultsize);
	p = result;
	while ((n = FUNC10(pip[0], p, result + resultsize - p - 1)) != 0) {
		if (n == -1) {
			if (errno == EINTR)
				continue;
			else
				FUNC3(2, "read");
		}
		p += n;
		if (result + resultsize == p - 1) {
			resultsize *= 2;
			result = FUNC11(result, resultsize);
			if (result == NULL)
				FUNC3(2, "realloc");
		}
	}
	if (FUNC8(result, '\0', p - result) != NULL) {
		FUNC6(result);
		return (NULL);
	}
	*p = '\0';
	FUNC1(pip[0]);
	while ((wpid = FUNC12(pid, &status, 0)) == -1 && errno == EINTR)
		;
	if (wpid == -1)
		FUNC3(2, "waitpid");
	if (status != 0) {
		FUNC6(result);
		return (NULL);
	}
	return (result);
}