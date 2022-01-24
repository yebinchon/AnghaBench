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
typedef  int off_t ;

/* Variables and functions */
 int COMPLETE ; 
 int ERROR ; 
 size_t FEAT_SIZE ; 
 int FUNC0 (char*,char**,int) ; 
 int code ; 
 int FUNC1 (char*,char const*) ; 
 int* features ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ftp_debug ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reply_string ; 
 char* FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  ttyout ; 
 int verbose ; 

off_t
FUNC7(const char *file, int noisy)
{
	int overbose, r;
	off_t size;

	overbose = verbose;
	size = -1;
	if (ftp_debug == 0)
		verbose = -1;
	if (! features[FEAT_SIZE]) {
		if (noisy)
			FUNC2(ttyout,
			    "SIZE is not supported by remote server.\n");
		goto cleanup_remotesize;
	}
	r = FUNC1("SIZE %s", file);
	if (r == COMPLETE) {
		char *cp, *ep;

		cp = FUNC6(reply_string, ' ');
		if (cp != NULL) {
			cp++;
			size = FUNC0(cp, &ep, 10);
			if (*ep != '\0' && !FUNC4((unsigned char)*ep))
				size = -1;
		}
	} else {
		if (r == ERROR && code == 500 && features[FEAT_SIZE] == -1)
			features[FEAT_SIZE] = 0;
		if (noisy && ftp_debug == 0) {
			FUNC3(reply_string, ttyout);
			FUNC5('\n', ttyout);
		}
	}
 cleanup_remotesize:
	verbose = overbose;
	return (size);
}