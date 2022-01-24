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
 int MATCH_BOTH ; 
 int MATCH_METHOD ; 
 int MATCH_NONE ; 
 int MATCH_PARTIAL ; 
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC2(const char *methods, const char *method,
    const char *submethod)
{
	size_t l = FUNC0(method);
	int match;
	const char *p;

	if (FUNC1(methods, method, l) != 0)
		return MATCH_NONE;
	p = methods + l;
	match = MATCH_METHOD;
	if (*p == ':') {
		if (!submethod)
			return MATCH_PARTIAL;
		l = FUNC0(submethod);
		p += 1;
		if (FUNC1(submethod, p, l))
			return MATCH_NONE;
		p += l;
		match = MATCH_BOTH;
	}
	if (*p != ',' && *p != '\0')
		return MATCH_NONE;
	return match;
}