#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bn; } ;
typedef  TYPE_1__ MINT ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char*) ; 

__attribute__((used)) static char *
FUNC5(const char *msg, const MINT *mp)
{
	char *s, *s2;

	s = FUNC0(mp->bn);
	if (s == NULL)
		FUNC3(msg);
	FUNC4(&s2, "%s", s);
	if (s2 == NULL)
		FUNC1(("%s", msg));
	FUNC2(s);
	return (s2);
}