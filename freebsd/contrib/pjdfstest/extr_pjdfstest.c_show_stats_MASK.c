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
typedef  int /*<<< orphan*/  stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(stat_t *sp, char *what)
{
	const char *s = "";
	char *w;

	for (w = FUNC2(what, ","); w != NULL; w = FUNC2(NULL, ",")) {
		FUNC0("%s", s);
		FUNC1(sp, w);
		s = ",";
	}
	FUNC0("\n");
}