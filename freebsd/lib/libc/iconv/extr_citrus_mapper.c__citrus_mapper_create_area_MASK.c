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
struct _citrus_mapper_area {int /*<<< orphan*/  ma_cache; int /*<<< orphan*/ * ma_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_HASH_SIZE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* _CITRUS_MAPPER_DIR ; 
 int /*<<< orphan*/  cm_lock ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (struct _citrus_mapper_area*) ; 
 struct _citrus_mapper_area* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,char const*,char*) ; 
 int FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 

int
FUNC8(
    struct _citrus_mapper_area *__restrict *__restrict rma,
    const char *__restrict area)
{
	struct _citrus_mapper_area *ma;
	struct stat st;
	char path[PATH_MAX];
	int ret;

	FUNC1(&cm_lock);

	if (*rma != NULL) {
		ret = 0;
		goto quit;
	}

	FUNC5(path, (size_t)PATH_MAX, "%s/%s", area, _CITRUS_MAPPER_DIR);

	ret = FUNC6(path, &st);
	if (ret)
		goto quit;

	ma = FUNC4(sizeof(*ma));
	if (ma == NULL) {
		ret = errno;
		goto quit;
	}
	ma->ma_dir = FUNC7(area);
	if (ma->ma_dir == NULL) {
		ret = errno;
		FUNC3(ma);
		goto quit;
	}
	FUNC2(&ma->ma_cache, CM_HASH_SIZE);

	*rma = ma;
	ret = 0;
quit:
	FUNC0(&cm_lock);

	return (ret);
}