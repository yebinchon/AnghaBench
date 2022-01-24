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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

int
FUNC3(const char *src, u_char *target, size_t targsize)
{
	int len;
	char *encoded, *p;

	/* copy the 'readonly' source */
	encoded = FUNC2(src);
	/* skip whitespace and data */
	for (p = encoded; *p == ' ' || *p == '\t'; p++)
		;
	for (; *p != '\0' && *p != ' ' && *p != '\t'; p++)
		;
	/* and remove trailing whitespace because __b64_pton needs this */
	*p = '\0';
	len = FUNC0(encoded, target, targsize);
	FUNC1(encoded);
	return len;
}