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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* MANIFEST_SKIP ; 
 char* MANIFEST_SKIP_ALWAYS ; 
 int MAXPATHLEN ; 
 int VE_FINGERPRINT_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,char*,struct stat*) ; 
 char** manifest_names ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int
FUNC8(const char *name)
{
	struct stat st;
	char buf[MAXPATHLEN];
	char *prefix;
	char *skip;
	const char **tp;
	int rc;

	FUNC6(buf, name, MAXPATHLEN - 1);
	if (!(prefix = FUNC7(buf, '/')))
		return (-1);
	*prefix = '\0';
	prefix = FUNC5(buf);
	rc = VE_FINGERPRINT_NONE;
	for (tp = manifest_names; *tp; tp++) {
		FUNC3(buf, sizeof(buf), "%s/%s", prefix, *tp);
		FUNC0(5, ("looking for %s\n", buf));
		if (FUNC4(buf, &st) == 0 && st.st_size > 0) {
#ifdef MANIFEST_SKIP_ALWAYS		/* very unlikely */
			skip = MANIFEST_SKIP_ALWAYS;
#else
#ifdef MANIFEST_SKIP			/* rare */
			if (*tp[0] == '.') {
				skip = MANIFEST_SKIP;
			} else
#endif
				skip = NULL;
#endif
			rc = FUNC2(buf, skip ? prefix : NULL,
			    skip, &st);
			break;
		}
	}
	FUNC1(prefix);
	return (rc);
}