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
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,short) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static MINT *
FUNC4(const char *msg, short n)
{
	MINT *mp;
	char *s;

	FUNC2(&s, "%hx", n);
	if (s == NULL)
		FUNC0(("%s", msg));
	mp = FUNC1(msg, s);
	FUNC3(s);
	return (mp);
}