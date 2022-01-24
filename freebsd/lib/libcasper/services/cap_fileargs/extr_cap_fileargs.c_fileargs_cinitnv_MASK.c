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
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 

fileargs_t *
FUNC7(cap_channel_t *cas, nvlist_t *limits)
{
	cap_channel_t *chann;
	fileargs_t *fa;
	int serrno, ret;
	int flags, operations;

	FUNC0(cas != NULL);

	if (limits == NULL) {
		return (FUNC4(NULL, 0));
	}

	chann = NULL;
	fa = NULL;

	chann = FUNC3(cas, "system.fileargs");
	if (chann == NULL) {
		FUNC5(limits);
		return (NULL);
	}

	flags = FUNC6(limits, "flags");
	operations = FUNC6(limits, "operations");

	/* Limits are consumed no need to free them. */
	ret = FUNC2(chann, limits);
	if (ret < 0)
		goto out;

	fa = FUNC4(chann, flags);
	if (fa == NULL)
		goto out;

	return (fa);
out:
	serrno = errno;
	if (chann != NULL)
		FUNC1(chann);
	errno = serrno;
	return (NULL);
}