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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AUT_EXEC_ENV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char const*) ; 

token_t *
FUNC5(char **envp)
{
	token_t *t;
	u_char *dptr = NULL;
	int i, count = 0;
	size_t totlen = 0;
	const char *nextenv;

	nextenv = *envp;

	while (nextenv != NULL) {
		int nextlen;

		nextlen = FUNC4(nextenv);
		totlen += nextlen + 1;
		count++;
		nextenv = *(envp + count);
	}

	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int32_t) + totlen);
	if (t == NULL)
		return (NULL);

	FUNC1(dptr, AUT_EXEC_ENV);
	FUNC2(dptr, count);

	for (i = 0; i < count; i++) {
		nextenv = *(envp + i);
		FUNC0(dptr, nextenv, FUNC4(nextenv) + 1);
	}

	return (t);
}