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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC2(const nvlist_t *nvl, int fd, int level)
{

	if (FUNC1(nvl) != 0) {
		FUNC0(fd, "%*serror: %d\n", level * 4, "",
		    FUNC1(nvl));
		return (true);
	}

	return (false);
}