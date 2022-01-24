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
struct gctl_req {int dummy; } ;
typedef  char off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int GV_FLAG_F ; 
 int GV_FLAG_S ; 
 int GV_FLAG_V ; 
 int /*<<< orphan*/  GV_MAXVOLNAME ; 
 int /*<<< orphan*/  GV_TYPE_VOL ; 
 char* FUNC0 (char* const) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*) ; 
 struct gctl_req* FUNC3 () ; 
 char* FUNC4 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,int,...) ; 
 char FUNC6 (char* const) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC10(int argc, char * const *argv, const char *verb)
{
	struct gctl_req *req;
	const char *errstr;
	char buf[BUFSIZ], *drivename, *volname;
	int drives, flags, i;
	off_t stripesize;

	flags = 0;
	drives = 0;
	volname = NULL;
	stripesize = 262144;

	/* XXX: Should we check for argument length? */

	req = FUNC3();
	FUNC5(req, "class", -1, "VINUM");

	for (i = 1; i < argc; i++) {
		if (!FUNC8(argv[i], "-f")) {
			flags |= GV_FLAG_F;
		} else if (!FUNC8(argv[i], "-n")) {
			volname = argv[++i];
		} else if (!FUNC8(argv[i], "-v")) {
			flags |= GV_FLAG_V;
		} else if (!FUNC8(argv[i], "-s")) {
			flags |= GV_FLAG_S;
			if (!FUNC8(verb, "raid5"))
				stripesize = FUNC6(argv[++i]);
		} else {
			/* Assume it's a drive. */
			FUNC7(buf, sizeof(buf), "drive%d", drives++);

			/* First we create the drive. */
			drivename = FUNC0(argv[i]);
			if (drivename == NULL)
				goto bad;
			/* Then we add it to the request. */
			FUNC5(req, buf, -1, drivename);
		}
	}

	FUNC5(req, "stripesize", sizeof(off_t), &stripesize);

	/* Find a free volume name. */
	if (volname == NULL)
		volname = FUNC1("gvinumvolume", GV_TYPE_VOL, GV_MAXVOLNAME);

	/* Then we send a request to actually create the volumes. */
	FUNC5(req, "verb", -1, verb);
	FUNC5(req, "flags", sizeof(int), &flags);
	FUNC5(req, "drives", sizeof(int), &drives);
	FUNC5(req, "name", -1, volname);
	errstr = FUNC4(req);
	if (errstr != NULL)
		FUNC9("creating %s volume failed: %s", verb, errstr);
bad:
	FUNC2(req);
}