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
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ **) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(dsl_pool_t *dp, const char *fullname,
    dsl_dataset_t **dsp, void *tag, char **shortnamep)
{
	char buf[ZFS_MAX_DATASET_NAME_LEN];
	char *hashp;

	if (FUNC4(fullname) >= ZFS_MAX_DATASET_NAME_LEN)
		return (FUNC0(ENAMETOOLONG));
	hashp = FUNC2(fullname, '#');
	if (hashp == NULL)
		return (FUNC0(EINVAL));

	*shortnamep = hashp + 1;
	if (FUNC5(*shortnamep, NULL, NULL))
		return (FUNC0(EINVAL));
	(void) FUNC3(buf, fullname, hashp - fullname + 1);
	return (FUNC1(dp, buf, tag, dsp));
}