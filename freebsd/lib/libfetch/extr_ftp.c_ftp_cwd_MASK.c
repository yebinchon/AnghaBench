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
typedef  int /*<<< orphan*/  pwd ;
typedef  int /*<<< orphan*/  conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,char const*) ; 
 int FTP_FILE_ACTION_OK ; 
 int FTP_OK ; 
 int FTP_WORKING_DIRECTORY ; 
 int PATH_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int
FUNC6(conn_t *conn, const char *file)
{
	const char *beg, *end;
	char pwd[PATH_MAX];
	int e, i, len;

	/* If no slashes in name, no need to change dirs. */
	if ((end = FUNC5(file, '/')) == NULL)
		return (0);
	if ((e = FUNC1(conn, "PWD")) != FTP_WORKING_DIRECTORY ||
	    (e = FUNC2(conn, pwd, sizeof(pwd))) != FTP_OK) {
		FUNC3(e);
		return (-1);
	}
	for (;;) {
		len = FUNC4(pwd);

		/* Look for a common prefix between PWD and dir to fetch. */
		for (i = 0; i <= len && i <= end - file; ++i)
			if (pwd[i] != file[i])
				break;
#if 0
		DEBUGF("have: [%.*s|%s]\n", i, pwd, pwd + i);
		DEBUGF("want: [%.*s|%s]\n", i, file, file + i);
#endif
		/* Keep going up a dir until we have a matching prefix. */
		if (pwd[i] == '\0' && (file[i - 1] == '/' || file[i] == '/'))
			break;
		if ((e = FUNC1(conn, "CDUP")) != FTP_FILE_ACTION_OK ||
		    (e = FUNC1(conn, "PWD")) != FTP_WORKING_DIRECTORY ||
		    (e = FUNC2(conn, pwd, sizeof(pwd))) != FTP_OK) {
			FUNC3(e);
			return (-1);
		}
	}

#ifdef FTP_COMBINE_CWDS
	/* Skip leading slashes, even "////". */
	for (beg = file + i; beg < end && *beg == '/'; ++beg, ++i)
		/* nothing */ ;

	/* If there is no trailing dir, we're already there. */
	if (beg >= end)
		return (0);

	/* Change to the directory all in one chunk (e.g., foo/bar/baz). */
	e = ftp_cmd(conn, "CWD %.*s", (int)(end - beg), beg);
	if (e == FTP_FILE_ACTION_OK)
		return (0);
#endif /* FTP_COMBINE_CWDS */

	/* That didn't work so go back to legacy behavior (multiple CWDs). */
	for (beg = file + i; beg < end; beg = file + i + 1) {
		while (*beg == '/')
			++beg, ++i;
		for (++i; file + i < end && file[i] != '/'; ++i)
			/* nothing */ ;
		e = FUNC1(conn, "CWD %.*s", file + i - beg, beg);
		if (e != FTP_FILE_ACTION_OK) {
			FUNC3(e);
			return (-1);
		}
	}
	return (0);
}