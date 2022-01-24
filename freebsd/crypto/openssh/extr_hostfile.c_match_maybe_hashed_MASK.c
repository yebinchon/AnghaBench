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
 char const HASH_DELIM ; 
 char* FUNC0 (char const*,char const*,size_t) ; 
 int FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC4(const char *host, const char *names, int *was_hashed)
{
	int hashed = *names == HASH_DELIM;
	const char *hashed_host;
	size_t nlen = FUNC2(names);

	if (was_hashed != NULL)
		*was_hashed = hashed;
	if (hashed) {
		if ((hashed_host = FUNC0(host, names, nlen)) == NULL)
			return -1;
		return nlen == FUNC2(hashed_host) &&
		    FUNC3(hashed_host, names, nlen) == 0;
	}
	return FUNC1(host, names) == 1;
}