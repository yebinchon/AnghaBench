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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  NV_TYPE_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

nvpair_t *
FUNC5(const char *name, int value)
{
	nvpair_t *nvp;

	value = FUNC3(value, F_DUPFD_CLOEXEC, 0);
	if (value < 0)
		return (NULL);

	nvp = FUNC4(name, NV_TYPE_DESCRIPTOR, (uint64_t)value,
	    sizeof(int64_t), 0);
	if (nvp == NULL) {
		FUNC1();
		FUNC2(value);
		FUNC0();
	}

	return (nvp);
}