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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  L_SET ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ TYPE_A ; 
 int byte_count ; 
 int data ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ guest ; 
 int FUNC9 (char*,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ noguestmod ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 scalar_t__ restart_point ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ type ; 

void
FUNC16(char *name, char *mode, int unique)
{
	int fd;
	FILE *fout, *din;
	int (*closefunc)(FILE *);

	if (*mode == 'a') {		/* APPE */
		if (unique) {
			/* Programming error */
			FUNC15(LOG_ERR, "Internal: unique flag to APPE");
			unique = 0;
		}
		if (guest && noguestmod) {
			FUNC13(550, "Appending to existing file denied.");
			goto err;
		}
		restart_point = 0;	/* not affected by preceding REST */
	}
	if (unique)			/* STOU overrides REST */
		restart_point = 0;
	if (guest && noguestmod) {
		if (restart_point) {	/* guest STOR w/REST */
			FUNC13(550, "Modifying existing file denied.");
			goto err;
		} else			/* treat guest STOR as STOU */
			unique = 1;
	}

	if (restart_point)
		mode = "r+";	/* so ASCII manual seek can work */
	if (unique) {
		if ((fd = FUNC9(name, &name)) < 0)
			goto err;
		fout = FUNC4(fd, mode);
	} else
		fout = FUNC6(name, mode);
	closefunc = fclose;
	if (fout == NULL) {
		FUNC11(553, name);
		goto err;
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
			if (FUNC7(fout, 0, SEEK_CUR) < 0) {
				FUNC11(550, name);
				goto done;
			}
		} else if (FUNC10(FUNC5(fout), restart_point, L_SET) < 0) {
			FUNC11(550, name);
			goto done;
		}
	}
	din = FUNC2(name, -1, "r");
	if (din == NULL)
		goto done;
	if (FUNC12(din, fout) == 0) {
		if (unique)
			FUNC13(226, "Transfer complete (unique file name:%s).",
			    name);
		else
			FUNC13(226, "Transfer complete.");
	}
	(void) FUNC3(din);
	data = -1;
	pdata = -1;
done:
	FUNC0(*mode == 'a' ? "append" : "put", name, byte_count);
	(*closefunc)(fout);
	return;
err:
	FUNC1(*mode == 'a' ? "append" : "put" , name);
	return;
}