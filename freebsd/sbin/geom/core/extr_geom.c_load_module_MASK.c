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
typedef  int /*<<< orphan*/  name2 ;
typedef  int /*<<< orphan*/  name1 ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* class_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	char name1[64], name2[64];

	FUNC3(name1, sizeof(name1), "g_%s", class_name);
	FUNC3(name2, sizeof(name2), "geom_%s", class_name);
	if (FUNC2(name1) < 0) {
		/* Not present in kernel, try loading it. */
		if (FUNC1(name2) < 0 || FUNC2(name1) < 0) {
			if (errno != EEXIST) {
				FUNC0(EXIT_FAILURE, "cannot load %s", name2);
			}
		}
	}
}