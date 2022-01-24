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

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC3(const char *symbol, char *buf, size_t len)
{
#ifndef NO_CXA_DEMANGLE
	char *dembuf;

	if (symbol[0] == '_' && symbol[1] == 'Z' && symbol[2]) {
		dembuf = FUNC0(symbol, NULL, NULL, NULL);
		if (!dembuf)
			goto fail;
		FUNC2(buf, dembuf, len);
		FUNC1(dembuf);
		return;
	}
fail:
#endif /* NO_CXA_DEMANGLE */
	FUNC2(buf, symbol, len);
}