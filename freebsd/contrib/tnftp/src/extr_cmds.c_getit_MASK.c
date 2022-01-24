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
typedef  int time_t ;
struct stat {int st_mtime; scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FEAT_REST_STREAM ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 char* FUNC2 (char*,int,char*,int,int,int) ; 
 int /*<<< orphan*/ * features ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ mapflag ; 
 scalar_t__ mcase ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*,char const*,int,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ restart_point ; 
 int FUNC8 (char const*,struct stat*) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

int
FUNC10(int argc, char *argv[], int restartit, const char *gmode)
{
	int	loc, rval;
	char	*remfile, *olocfile;
	const char *locfile;
	char	buf[MAXPATHLEN];

	loc = rval = 0;
	if (argc == 2) {
		argc++;
		argv[2] = argv[1];
		loc++;
	}
	if (argc == 0 || (argc == 1 && !FUNC1(&argc, &argv, "remote-file")))
		goto usage;
	if ((argc < 3 && !FUNC1(&argc, &argv, "local-file")) || argc > 3) {
 usage:
		FUNC0("usage: %s remote-file [local-file]\n", argv[0]);
		code = -1;
		return (0);
	}
	remfile = argv[1];
	if ((olocfile = FUNC5(argv[2])) == NULL) {
		code = -1;
		return (0);
	}
	locfile = FUNC2(buf, sizeof(buf), olocfile,
		loc && mcase, loc && ntflag, loc && mapflag);
	if (restartit) {
		struct stat stbuf;
		int ret;

		if (! features[FEAT_REST_STREAM]) {
			FUNC3(ttyout,
			    "Restart is not supported by the remote server.\n");
			return (0);
		}
		ret = FUNC8(locfile, &stbuf);
		if (restartit == 1) {
			if (ret < 0) {
				FUNC9("Can't stat `%s'", locfile);
				goto freegetit;
			}
			restart_point = stbuf.st_size;
		} else {
			if (ret == 0) {
				time_t mtime;

				mtime = FUNC7(argv[1], 0);
				if (mtime == -1)
					goto freegetit;
				if (stbuf.st_mtime >= mtime) {
					rval = 1;
					goto freegetit;
				}
			}
		}
	}

	FUNC6("RETR", locfile, remfile, gmode,
	    remfile != argv[1] || locfile != argv[2], loc);
	restart_point = 0;
 freegetit:
	(void)FUNC4(olocfile);
	return (rval);
}