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
struct stat {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TYPE_A ; 
 int byte_count ; 
 int data ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ guest ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 scalar_t__ restart_point ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (char*,struct stat*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ type ; 

void
FUNC18(char *name, char *mode, int unique)
{
	FILE *fout, *din;
	struct stat st;
	int (*closefunc) (FILE *);

	if(guest && FUNC4(name))
	    return;
	if (unique) {
	    char *uname;
	    if (FUNC15(name, &st) == 0) {
		if ((uname = FUNC9(name)) == NULL)
		    return;
		name = uname;
	    }
	    FUNC1(*mode == 'w' ? "put" : "append", name);
	}

	if (restart_point)
		mode = "r+";
	fout = FUNC6(name, mode);
	closefunc = fclose;
	if (fout == NULL) {
		FUNC11(553, name);
		FUNC1(*mode == 'w' ? "put" : "append", name);
		return;
	}
	byte_count = -1;
	if (restart_point) {
		if (type == TYPE_A) {
			off_t i, n;
			int c;

			n = restart_point;
			i = 0;
			while (i++ < n) {
				if ((c=FUNC8(fout)) == EOF) {
					FUNC11(550, name);
					goto done;
				}
				if (c == '\n')
					i++;
			}
			/*
			 * We must do this seek to "current" position
			 * because we are changing from reading to
			 * writing.
			 */
			if (FUNC7(fout, 0L, SEEK_CUR) < 0) {
				FUNC11(550, name);
				goto done;
			}
		} else if (FUNC10(FUNC5(fout), restart_point, SEEK_SET) < 0) {
			FUNC11(550, name);
			goto done;
		}
	}
	din = FUNC2(name, (off_t)-1, "r");
	if (din == NULL)
		goto done;
	FUNC14(FUNC5(din), 1);
	if (FUNC12(din, fout) == 0) {
	    if((*closefunc)(fout) < 0)
		FUNC11(552, name);
	    else {
		if (unique)
			FUNC13(226, "Transfer complete (unique file name:%s).",
			    name);
		else
			FUNC13(226, "Transfer complete.");
	    }
	} else
	    (*closefunc)(fout);
	FUNC3(din);
	data = -1;
	pdata = -1;
done:
	FUNC0(*mode == 'w' ? "put" : "append", name, byte_count);
}