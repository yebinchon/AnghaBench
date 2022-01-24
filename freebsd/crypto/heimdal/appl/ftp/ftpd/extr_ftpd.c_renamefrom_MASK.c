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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 

char *
FUNC3(char *name)
{
	struct stat st;

	if (FUNC2(name, &st) < 0) {
		FUNC0(550, name);
		return NULL;
	}
	FUNC1(350, "File exists, ready for destination name");
	return (name);
}