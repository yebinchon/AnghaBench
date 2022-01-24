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
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEF_VERBOSE ; 
 int VE_FINGERPRINT_NONE ; 
 int VE_FINGERPRINT_WRONG ; 
 int VE_NOT_CHECKED ; 
 int VE_VERIFIED ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,char*,struct stat*) ; 
 int FUNC4 (struct stat*) ; 
 int loaded_manifests ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC9(const char *name, const char *prefix,
    const char *skip, struct stat *stp)
{
	struct stat st;
	size_t n;
	int rc;
	char *content;

	rc = VE_FINGERPRINT_NONE;
	n = FUNC6(name);
	if (n > 4) {
		if (!stp) {
			stp = &st;
			if (FUNC5(name, &st) < 0 || !FUNC1(st.st_mode))
				return (rc);
		}
		rc = FUNC4(stp);
		if (rc != VE_NOT_CHECKED) {
			return (rc);
		}
		/* loader has no sense of time */
		FUNC7(stp->st_mtime);
		content = (char *)FUNC8(name, VEF_VERBOSE);
		if (content) {
			FUNC3(name, prefix, skip, content, stp);
			FUNC2(stp, VE_VERIFIED);
			loaded_manifests = 1; /* we are verifying! */
			FUNC0(3, ("loaded: %s %s %s\n",
				name, prefix, skip));
			rc = 0;
		} else {
			rc = VE_FINGERPRINT_WRONG;
			FUNC2(stp, rc);	/* remember */
		}
	}
	return (rc);
}