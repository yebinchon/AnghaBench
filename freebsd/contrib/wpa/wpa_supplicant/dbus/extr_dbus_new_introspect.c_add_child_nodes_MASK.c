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
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char***) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char*,char*) ; 

__attribute__((used)) static void FUNC3(struct wpabuf *xml, DBusConnection *con,
			    const char *path)
{
	char **children;
	int i;

	/* add child nodes to introspection tree */
	FUNC0(con, path, &children);
	for (i = 0; children[i]; i++)
		FUNC2(xml, "<node name=\"%s\"/>", children[i]);
	FUNC1(children);
}