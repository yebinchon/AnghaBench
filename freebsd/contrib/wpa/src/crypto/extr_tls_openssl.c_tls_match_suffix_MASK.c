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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 char* FUNC0 (char const*,char*,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 

__attribute__((used)) static int FUNC2(X509 *cert, const char *match, int full)
{
#ifdef CONFIG_NATIVE_WINDOWS
	/* wincrypt.h has conflicting X509_NAME definition */
	return -1;
#else /* CONFIG_NATIVE_WINDOWS */
	const char *token, *last = NULL;

	/* Process each match alternative separately until a match is found */
	while ((token = FUNC0(match, ";", &last))) {
		if (FUNC1(cert, token, last - token, full))
			return 1;
	}

	return 0;
#endif /* CONFIG_NATIVE_WINDOWS */
}