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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static __inline bool
FUNC3(const atf_tc_t *tc, const char *fs)
{
	const char *fstype;

	if (!FUNC1(tc, "fstype"))
		return true;

	fstype = FUNC0(tc, "fstype");
	if (FUNC2(fstype, fs) == 0)
		return true;
	return false;
}