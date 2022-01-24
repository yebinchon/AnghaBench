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
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 struct passwd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static const char *
FUNC5(void)
{
	struct passwd *p;
	static char *path;
	size_t len;

	if (path)
		return path;

	if ((p = FUNC0(FUNC1())) == NULL)
		return NULL;

	len = FUNC4(p->pw_dir) + sizeof("/.history");
	if ((path = FUNC2(len)) == NULL)
		return NULL;

	(void)FUNC3(path, len, "%s/.history", p->pw_dir);
	return path;
}