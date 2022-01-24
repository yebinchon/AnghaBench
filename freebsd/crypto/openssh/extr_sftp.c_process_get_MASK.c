#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sftp_conn {int dummy; } ;
struct TYPE_5__ {int gl_matchc; char** gl_pathv; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  g ;

/* Variables and functions */
 int /*<<< orphan*/  GLOB_MARK ; 
 int GLOB_NOSPACE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (struct sftp_conn*,char*,char*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (struct sftp_conn*,char*,char*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int global_aflag ; 
 scalar_t__ global_fflag ; 
 scalar_t__ global_pflag ; 
 scalar_t__ global_rflag ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  interrupted ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 char* FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 int FUNC13 (struct sftp_conn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (char const*) ; 

__attribute__((used)) static int
FUNC16(struct sftp_conn *conn, const char *src, const char *dst,
    const char *pwd, int pflag, int rflag, int resume, int fflag)
{
	char *abs_src = NULL;
	char *abs_dst = NULL;
	glob_t g;
	char *filename, *tmp=NULL;
	int i, r, err = 0;

	abs_src = FUNC15(src);
	abs_src = FUNC8(abs_src, pwd);
	FUNC9(&g, 0, sizeof(g));

	FUNC1("Looking up %s", abs_src);
	if ((r = FUNC13(conn, abs_src, GLOB_MARK, NULL, &g)) != 0) {
		if (r == GLOB_NOSPACE) {
			FUNC4("Too many matches for \"%s\".", abs_src);
		} else {
			FUNC4("File \"%s\" not found.", abs_src);
		}
		err = -1;
		goto out;
	}

	/*
	 * If multiple matches then dst must be a directory or
	 * unspecified.
	 */
	if (g.gl_matchc > 1 && dst != NULL && !FUNC7(dst)) {
		FUNC4("Multiple source paths, but destination "
		    "\"%s\" is not a directory", dst);
		err = -1;
		goto out;
	}

	for (i = 0; g.gl_pathv[i] && !interrupted; i++) {
		tmp = FUNC15(g.gl_pathv[i]);
		if ((filename = FUNC0(tmp)) == NULL) {
			FUNC4("basename %s: %s", tmp, FUNC14(errno));
			FUNC5(tmp);
			err = -1;
			goto out;
		}

		if (g.gl_matchc == 1 && dst) {
			if (FUNC7(dst)) {
				abs_dst = FUNC11(dst, filename);
			} else {
				abs_dst = FUNC15(dst);
			}
		} else if (dst) {
			abs_dst = FUNC11(dst, filename);
		} else {
			abs_dst = FUNC15(filename);
		}
		FUNC5(tmp);

		resume |= global_aflag;
		if (!quiet && resume)
			FUNC10("Resuming %s to %s\n",
			    g.gl_pathv[i], abs_dst);
		else if (!quiet && !resume)
			FUNC10("Fetching %s to %s\n",
			    g.gl_pathv[i], abs_dst);
		if (FUNC12(g.gl_pathv[i]) && (rflag || global_rflag)) {
			if (FUNC3(conn, g.gl_pathv[i], abs_dst, NULL,
			    pflag || global_pflag, 1, resume,
			    fflag || global_fflag) == -1)
				err = -1;
		} else {
			if (FUNC2(conn, g.gl_pathv[i], abs_dst, NULL,
			    pflag || global_pflag, resume,
			    fflag || global_fflag) == -1)
				err = -1;
		}
		FUNC5(abs_dst);
		abs_dst = NULL;
	}

out:
	FUNC5(abs_src);
	FUNC6(&g);
	return(err);
}