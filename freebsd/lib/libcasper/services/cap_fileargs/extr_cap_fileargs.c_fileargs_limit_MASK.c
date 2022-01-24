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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 int ENOTCAPABLE ; 
 int O_CREAT ; 
 int allowed_operations ; 
 int capflags ; 
 scalar_t__ capmode ; 
 int /*<<< orphan*/  caprightsp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int
FUNC3(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{

	if (oldlimits != NULL)
		return (ENOTCAPABLE);

	capflags = (int)FUNC1(newlimits, "flags", 0);
	allowed_operations = (int)FUNC1(newlimits, "operations", 0);
	if ((capflags & O_CREAT) != 0)
		capmode = (mode_t)FUNC2(newlimits, "mode");
	else
		capmode = 0;

	caprightsp = FUNC0(newlimits, "cap_rights", NULL, NULL, 0);

	return (0);
}