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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char** signature_exts ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 unsigned char* FUNC5 (char*,int) ; 
 unsigned char* FUNC6 (char*,int) ; 

unsigned char *
FUNC7(const char *filename, int flags)
{
	struct stat st;
	char buf[MAXPATHLEN];
	const char **se;

	for (se = signature_exts; *se; se++) {
		FUNC2(buf, sizeof(buf), "%s.%s", filename, *se);
		if (FUNC3(buf, &st) < 0 || !FUNC1(st.st_mode))
			continue;
		FUNC0(5, ("verify_signed: %s\n", buf));
#ifdef VE_OPENPGP_SUPPORT
		if (strncmp(*se, "asc", 3) == 0)
			return (verify_asc(buf, flags));
#endif
		return (FUNC6(buf, flags));
	}
	return (NULL);
}