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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 char* FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,void**,char const*,int /*<<< orphan*/ ,void*,char**) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,void**) ; 
 int FUNC3 (int /*<<< orphan*/  const*,void**,char const*,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int
FUNC7(const atf_tc_t *tc, void **argp,
	const char *image, off_t size, void *fspriv)
{
	char *rumpffs_argv[5];
	int rv;

	FUNC5();
	if ((rv = FUNC3(tc, argp, image, size, fspriv)) != 0)
		return rv;
	if (FUNC4("p2kffsfake", 0777) == -1 && errno != EEXIST)
		return errno;

	FUNC6("P2K_NODETACH", "1", 1);
	rumpffs_argv[0] = FUNC0("rump_ffs");
	rumpffs_argv[1] = FUNC0(image);
	rumpffs_argv[2] = FUNC0("p2kffsfake"); /* NOTUSED */
	rumpffs_argv[3] = NULL;

	if ((rv = FUNC1(tc, argp, image, size, fspriv, rumpffs_argv)) != 0)
		FUNC2(tc, argp);
	return rv;
}