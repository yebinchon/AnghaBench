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
typedef  int uid_t ;
typedef  scalar_t__ u_int ;
typedef  int mode_t ;
typedef  int gid_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int S_IFBLK ; 
 int S_IFCHR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (long,long) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*,int,scalar_t__) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char **argv)
{
	int range_error;
	uid_t uid;
	gid_t gid;
	mode_t mode;
	dev_t dev;
	char *cp, *endp;
	long mymajor, myminor;

	if (argc != 2 && argc != 5 && argc != 6)
		FUNC12();

	if (argc >= 5) {
		mode = 0666;
		if (argv[2][0] == 'c')
			mode |= S_IFCHR;
		else if (argv[2][0] == 'b')
			mode |= S_IFBLK;
		else
			FUNC4(1, "node must be type 'b' or 'c'");

		errno = 0;
		mymajor = (long)FUNC11(argv[3], &endp, 0);
		if (endp == argv[3] || *endp != '\0')
			FUNC4(1, "%s: non-numeric major number", argv[3]);
		range_error = errno;
		errno = 0;
		myminor = (long)FUNC11(argv[4], &endp, 0);
		if (endp == argv[4] || *endp != '\0')
			FUNC4(1, "%s: non-numeric minor number", argv[4]);
		range_error |= errno;
		dev = FUNC7(mymajor, myminor);
		if (range_error || FUNC6(dev) != mymajor ||
		    (long)(u_int)FUNC8(dev) != myminor)
			FUNC4(1, "major or minor number too large");
	} else {
		mode = 0666 | S_IFCHR;
		dev = 0;
	}

	uid = gid = -1;
	if (6 == argc) {
	    	/* have owner:group */
		if ((cp = FUNC10(argv[5], ':')) != NULL) {
			*cp++ = '\0';
			gid = FUNC0(cp);
		} else
		FUNC12();
		uid = FUNC1(argv[5]);
	}

	if (FUNC9(argv[1], mode, dev) != 0)
		FUNC3(1, "%s", argv[1]);
	if (6 == argc)
		if (FUNC2(argv[1], uid, gid))
			FUNC3(1, "setting ownership on %s", argv[1]);
	FUNC5(0);
}