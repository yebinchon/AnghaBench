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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

char *
FUNC2 (const char *s, const char *find, int len)
{
	char c, sc;
	int mlen;

	if ((c = *find++) != 0) {
		mlen = FUNC0 (find);
		do {
			do {
				if ((sc = *s++) == 0 || len-- == 0)
					return (NULL);
			} while (sc != c);
		} while (FUNC1 (s, find, mlen) != 0);
		s--;
	}
	return ((char *)s);
}