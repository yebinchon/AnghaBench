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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long long,...) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC3(const char *p, off_t *offset, off_t *length, off_t *size)
{
	off_t first, last, len;

	if (FUNC2(p, "bytes ", 6) != 0)
		return (-1);
	p += 6;
	if (*p == '*') {
		first = last = -1;
		++p;
	} else {
		for (first = 0; *p && FUNC1((unsigned char)*p); ++p)
			first = first * 10 + *p - '0';
		if (*p != '-')
			return (-1);
		for (last = 0, ++p; *p && FUNC1((unsigned char)*p); ++p)
			last = last * 10 + *p - '0';
	}
	if (first > last || *p != '/')
		return (-1);
	for (len = 0, ++p; *p && FUNC1((unsigned char)*p); ++p)
		len = len * 10 + *p - '0';
	if (*p || len < last - first + 1)
		return (-1);
	if (first == -1) {
		FUNC0("content range: [*/%lld]\n", (long long)len);
		*length = 0;
	} else {
		FUNC0("content range: [%lld-%lld/%lld]\n",
		    (long long)first, (long long)last, (long long)len);
		*length = last - first + 1;
	}
	*offset = first;
	*size = len;
	return (0);
}