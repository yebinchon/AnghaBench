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
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,char const* const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

fileargs_t *
FUNC3(cap_channel_t *cas, int argc, char *argv[], int flags,
     mode_t mode, cap_rights_t *rightsp, int operations)
{
	nvlist_t *limits;

	if (argc <= 0 || argv == NULL) {
		return (FUNC1(NULL, 0));
	}

	limits = FUNC2(argc, (const char * const *)argv, flags,
	   mode, rightsp, operations);
	if (limits == NULL)
		return (NULL);

	return (FUNC0(cas, limits));
}