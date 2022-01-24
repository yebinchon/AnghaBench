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
 int /*<<< orphan*/  SEP ; 
 int SSH_PROTO_2 ; 
 int SSH_PROTO_UNKNOWN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *spec)
{
	char *s, *p, *q;
	int ret = SSH_PROTO_UNKNOWN;

	if (spec == NULL)
		return ret;
	q = s = FUNC3(spec);
	if (s == NULL)
		return ret;
	for ((p = FUNC4(&q, SEP)); p && *p != '\0'; (p = FUNC4(&q, SEP))) {
		switch (FUNC0(p)) {
		case 2:
			ret |= SSH_PROTO_2;
			break;
		default:
			FUNC2("ignoring bad proto spec: '%s'.", p);
			break;
		}
	}
	FUNC1(s);
	return ret;
}