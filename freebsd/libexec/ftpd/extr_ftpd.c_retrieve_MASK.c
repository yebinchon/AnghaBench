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
typedef  int /*<<< orphan*/  time_t ;
struct stat {int st_size; int st_blksize; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  L_SET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_A ; 
 int byte_count ; 
 int data ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,char*) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ guest ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,char*) ; 
 scalar_t__ restart_point ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*) ; 
 scalar_t__ stats ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ type ; 

void
FUNC20(char *cmd, char *name)
{
	FILE *fin, *dout;
	struct stat st;
	int (*closefunc)(FILE *);
	time_t start;
	char line[BUFSIZ];

	if (cmd == 0) {
		fin = FUNC7(name, "r"), closefunc = fclose;
		st.st_size = 0;
	} else {
		(void) FUNC17(line, sizeof(line), cmd, name);
		name = line;
		fin = FUNC10(line, "r"), closefunc = ftpd_pclose;
		st.st_size = -1;
		st.st_blksize = BUFSIZ;
	}
	if (fin == NULL) {
		if (errno != 0) {
			FUNC14(550, name);
			if (cmd == 0) {
				FUNC1("get", name);
			}
		}
		return;
	}
	byte_count = -1;
	if (cmd == 0) {
		if (FUNC8(FUNC6(fin), &st) < 0) {
			FUNC14(550, name);
			goto done;
		}
		if (!FUNC3(st.st_mode)) {
			/*
			 * Never sending a raw directory is a workaround
			 * for buggy clients that will attempt to RETR
			 * a directory before listing it, e.g., Mozilla.
			 * Preventing a guest from getting irregular files
			 * is a simple security measure.
			 */
			if (FUNC2(st.st_mode) || guest) {
				FUNC15(550, "%s: not a plain file.", name);
				goto done;
			}
			st.st_size = -1;
			/* st.st_blksize is set for all descriptor types */
		}
	}
	if (restart_point) {
		if (type == TYPE_A) {
			off_t i, n;
			int c;

			n = restart_point;
			i = 0;
			while (i++ < n) {
				if ((c=FUNC11(fin)) == EOF) {
					FUNC14(550, name);
					goto done;
				}
				if (c == '\n')
					i++;
			}
		} else if (FUNC13(FUNC6(fin), restart_point, L_SET) < 0) {
			FUNC14(550, name);
			goto done;
		}
	}
	dout = FUNC4(name, st.st_size, "w");
	if (dout == NULL)
		goto done;
	FUNC19(&start);
	FUNC16(fin, dout, st.st_blksize, st.st_size,
		  restart_point == 0 && cmd == 0 && FUNC3(st.st_mode));
	if (cmd == 0 && guest && stats && byte_count > 0)
		FUNC12(name, byte_count, start);
	(void) FUNC5(dout);
	data = -1;
	pdata = -1;
done:
	if (cmd == 0)
		FUNC0("get", name, byte_count);
	(*closefunc)(fin);
}