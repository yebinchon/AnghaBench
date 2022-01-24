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
typedef  int /*<<< orphan*/  uidstr ;
struct passwd {char* pw_dir; int /*<<< orphan*/  pw_name; scalar_t__ pw_uid; } ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char*,char*,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC3 (char*,int,char*,...) ; 
 char* FUNC4 (char*) ; 

char *
FUNC5(const char *filename, struct passwd *pw)
{
	char *file, uidstr[32], ret[PATH_MAX];
	int i;

	FUNC3(uidstr, sizeof(uidstr), "%llu",
	    (unsigned long long)pw->pw_uid);
	file = FUNC2(filename, "h", pw->pw_dir,
	    "u", pw->pw_name, "U", uidstr, (char *)NULL);

	/*
	 * Ensure that filename starts anchored. If not, be backward
	 * compatible and prepend the '%h/'
	 */
	if (*file == '/')
		return (file);

	i = FUNC3(ret, sizeof(ret), "%s/%s", pw->pw_dir, file);
	if (i < 0 || (size_t)i >= sizeof(ret))
		FUNC0("expand_authorized_keys: path too long");
	FUNC1(file);
	return (FUNC4(ret));
}