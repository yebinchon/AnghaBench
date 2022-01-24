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
typedef  int u_int ;
struct winsize {int ws_col; } ;
struct stat {int dummy; } ;
struct sftp_conn {int dummy; } ;
typedef  int /*<<< orphan*/  sb ;
struct TYPE_5__ {char* filename; int /*<<< orphan*/  longname; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ SFTP_DIRENT ;

/* Variables and functions */
 int LS_LONG_VIEW ; 
 int LS_NUMERIC_VIEW ; 
 int LS_REVERSE_SORT ; 
 int LS_SHORT_VIEW ; 
 int LS_SHOW_ALL ; 
 int LS_SI_UNITS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int SORT_FLAGS ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct stat*) ; 
 int FUNC3 (struct sftp_conn*,char const*,TYPE_1__***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  interrupted ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 char* FUNC8 (char*,struct stat*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (char const*,char*) ; 
 char* FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdirent_comp ; 
 int sort_flag ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(struct sftp_conn *conn, const char *path,
    const char *strip_path, int lflag)
{
	int n;
	u_int c = 1, colspace = 0, columns = 1;
	SFTP_DIRENT **d;

	if ((n = FUNC3(conn, path, &d)) != 0)
		return (n);

	if (!(lflag & LS_SHORT_VIEW)) {
		u_int m = 0, width = 80;
		struct winsize ws;
		char *tmp;

		/* Count entries for sort and find longest filename */
		for (n = 0; d[n] != NULL; n++) {
			if (d[n]->filename[0] != '.' || (lflag & LS_SHOW_ALL))
				m = FUNC0(m, FUNC15(d[n]->filename));
		}

		/* Add any subpath that also needs to be counted */
		tmp = FUNC12(path, strip_path);
		m += FUNC15(tmp);
		FUNC5(tmp);

		if (FUNC7(FUNC4(stdin), TIOCGWINSZ, &ws) != -1)
			width = ws.ws_col;

		columns = width / (m + 2);
		columns = FUNC0(columns, 1);
		colspace = width / columns;
		colspace = FUNC1(colspace, width);
	}

	if (lflag & SORT_FLAGS) {
		for (n = 0; d[n] != NULL; n++)
			;	/* count entries */
		sort_flag = lflag & (SORT_FLAGS|LS_REVERSE_SORT);
		FUNC14(d, n, sizeof(*d), sdirent_comp);
	}

	for (n = 0; d[n] != NULL && !interrupted; n++) {
		char *tmp, *fname;

		if (d[n]->filename[0] == '.' && !(lflag & LS_SHOW_ALL))
			continue;

		tmp = FUNC11(path, d[n]->filename);
		fname = FUNC12(tmp, strip_path);
		FUNC5(tmp);

		if (lflag & LS_LONG_VIEW) {
			if (lflag & (LS_NUMERIC_VIEW|LS_SI_UNITS)) {
				char *lname;
				struct stat sb;

				FUNC9(&sb, 0, sizeof(sb));
				FUNC2(&d[n]->a, &sb);
				lname = FUNC8(fname, &sb, 1,
				    (lflag & LS_SI_UNITS));
				FUNC10("%s\n", lname);
				FUNC5(lname);
			} else
				FUNC10("%s\n", d[n]->longname);
		} else {
			FUNC10("%-*s", colspace, fname);
			if (c >= columns) {
				FUNC13("\n");
				c = 1;
			} else
				c++;
		}

		FUNC5(fname);
	}

	if (!(lflag & LS_LONG_VIEW) && (c != 1))
		FUNC13("\n");

	FUNC6(d);
	return (0);
}