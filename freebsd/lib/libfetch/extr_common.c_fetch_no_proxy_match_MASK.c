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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t) ; 

int
FUNC5(const char *host)
{
	const char *no_proxy, *p, *q;
	size_t h_len, d_len;

	if ((no_proxy = FUNC0("NO_PROXY")) == NULL &&
	    (no_proxy = FUNC0("no_proxy")) == NULL)
		return (0);

	/* asterisk matches any hostname */
	if (FUNC2(no_proxy, "*") == 0)
		return (1);

	h_len = FUNC3(host);
	p = no_proxy;
	do {
		/* position p at the beginning of a domain suffix */
		while (*p == ',' || FUNC1((unsigned char)*p))
			p++;

		/* position q at the first separator character */
		for (q = p; *q; ++q)
			if (*q == ',' || FUNC1((unsigned char)*q))
				break;

		d_len = q - p;
		if (d_len > 0 && h_len >= d_len &&
		    FUNC4(host + h_len - d_len,
			p, d_len) == 0) {
			/* domain name matches */
			return (1);
		}

		p = q + 1;
	} while (*q);

	return (0);
}