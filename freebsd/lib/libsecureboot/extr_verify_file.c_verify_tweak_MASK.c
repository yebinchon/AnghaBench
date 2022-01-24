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
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int VE_MUST ; 
 int VE_WANT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t FUNC8 (unsigned char*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(int fd, off_t off, struct stat *stp,
    char *tweak, int *accept_no_fp,
    int *verbose, int *verifying)
{
	if (FUNC4(tweak, "off") == 0) {
		*verifying = 0;
	} else if (FUNC4(tweak, "strict") == 0) {
		/* anything caller wants verified must be */
		*accept_no_fp = VE_WANT;
		*verbose = 1; /* warn of anything unverified */
		/* treat self test failure as fatal */
		if (!FUNC7()) {
			FUNC2("verify self tests failed");
		}
	} else if (FUNC4(tweak, "modules") == 0) {
		/* modules/kernel must be verified */
		*accept_no_fp = VE_MUST;
	} else if (FUNC4(tweak, "try") == 0) {
		/* best effort: always accept no fp */
		*accept_no_fp = VE_MUST + 1;
	} else if (FUNC4(tweak, "verbose") == 0) {
		*verbose = 1;
	} else if (FUNC4(tweak, "quiet") == 0) {
		*verbose = 0;
	} else if (FUNC5(tweak, "trust", 5) == 0) {
		/* content is trust anchor to add or revoke */
		unsigned char *ucp;
		size_t num;

		if (off > 0)
			FUNC1(fd, 0, SEEK_SET);
		ucp = FUNC3(fd, stp->st_size);
		if (ucp == NULL)
			return;
		if (FUNC6(tweak, "revoke")) {
			num = FUNC9(ucp, stp->st_size);
			FUNC0(3, ("revoked %d trust anchors\n",
				(int) num));
		} else {
			num = FUNC8(ucp, stp->st_size);
			FUNC0(3, ("added %d trust anchors\n",
				(int) num));
		}
	}
}