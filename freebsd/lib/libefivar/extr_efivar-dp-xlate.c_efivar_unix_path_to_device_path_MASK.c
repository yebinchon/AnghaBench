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
struct gmesh {int dummy; } ;
typedef  int /*<<< orphan*/  efidp ;

/* Variables and functions */
 int EDOOFUS ; 
 int ENOMEM ; 
 int FUNC0 (struct gmesh*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gmesh*,char*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmesh*) ; 
 scalar_t__ FUNC4 (struct gmesh*) ; 
 int FUNC5 (struct gmesh*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 

int
FUNC8(const char *path, efidp *dp)
{
	char *modpath = NULL, *cp;
	int rv = ENOMEM;
	struct gmesh mesh;

	/*
	 * Fail early for clearly bogus things
	 */
	if (path == NULL || dp == NULL)
		return (EDOOFUS);

	/*
	 * We'll need the goem mesh to grovel through it to find the
	 * efimedia attribute for any devices we find. Grab it here
	 * and release it to simplify the error paths out of the
	 * subordinate functions
	 */
	if (FUNC4(&mesh))
		return (errno);

	/*
	 * Convert all \ to /. We'll convert them back again when
	 * we encode the file. Boot loaders are expected to cope.
	 */
	modpath = FUNC7(path);
	if (modpath == NULL)
		goto out;
	for (cp = modpath; *cp; cp++)
		if (*cp == '\\')
			*cp = '/';

	if (modpath[0] == '/' && modpath[1] == '/')	/* Handle //foo/bar/baz */
		rv = FUNC1(&mesh, modpath, dp);
	else if (FUNC6(modpath, ':'))			/* Handle dev:/bar/baz */
		rv = FUNC0(&mesh, modpath, dp);
	else						/* Handle /a/b/c */
		rv = FUNC5(&mesh, modpath, dp);

out:
	FUNC3(&mesh);
	FUNC2(modpath);

	return (rv);
}