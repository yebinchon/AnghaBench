#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ fa_magic; int /*<<< orphan*/ * fa_cache; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/  const*,char*,size_t*) ; 

__attribute__((used)) static int
FUNC5(fileargs_t *fa, const char *name, struct stat *sb)
{
	const nvlist_t *nvl;
	size_t size;
	const void *buf;

	FUNC0(fa != NULL);
	FUNC0(fa->fa_magic == FILEARGS_MAGIC);
	FUNC0(name != NULL);

	if (fa->fa_cache == NULL)
		return (-1);

	nvl = FUNC1(fa->fa_cache, name, NULL);
	if (nvl == NULL)
		return (-1);

	if (!FUNC3(nvl, "stat")) {
		return (-1);
	}

	buf = FUNC4(nvl, "stat", &size);
	FUNC0(size == sizeof(*sb));
	FUNC2(sb, buf, size);

	return (0);
}