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
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int WPAS_DBUS_OBJECT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char***) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC4(DBusConnection *con,
					       const char *path)
{
	char **objects = NULL;
	char subobj_path[WPAS_DBUS_OBJECT_PATH_MAX];
	int i;

	FUNC3(con, path);

	if (!FUNC0(con, path, &objects))
		goto out;

	for (i = 0; objects[i]; i++) {
		FUNC2(subobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
			    "%s/%s", path, objects[i]);
		FUNC4(con, subobj_path);
	}

out:
	FUNC1(objects);
}