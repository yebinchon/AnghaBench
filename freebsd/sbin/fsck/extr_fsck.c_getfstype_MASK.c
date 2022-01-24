#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  str; } ;
struct diocgattr_arg {int len; TYPE_2__ value; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {char const* name; int /*<<< orphan*/ * ptype; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGATTR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct diocgattr_arg*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* ptype_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC7(const char *str)
{
	struct diocgattr_arg attr;
	int fd, i;

	if ((fd = FUNC4(str, O_RDONLY)) == -1)
		FUNC1(1, "cannot open `%s'", str);

	FUNC5(attr.name, "PART::type", sizeof(attr.name));
	FUNC3(&attr.value, 0, sizeof(attr.value));
	attr.len = sizeof(attr.value);
	if (FUNC2(fd, DIOCGATTR, &attr) == -1) {
		(void) FUNC0(fd);
		return(NULL);
	}
	(void) FUNC0(fd);
	for (i = 0; ptype_map[i].ptype != NULL; i++)
		if (FUNC6(attr.value.str, ptype_map[i].ptype) != NULL)
			return (ptype_map[i].name);
	return (NULL);
}