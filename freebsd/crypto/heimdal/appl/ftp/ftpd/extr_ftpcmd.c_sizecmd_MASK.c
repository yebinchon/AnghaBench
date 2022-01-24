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
struct stat {int /*<<< orphan*/  st_mode; scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_A 130 
#define  TYPE_I 129 
#define  TYPE_L 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct stat*) ; 
 int type ; 

__attribute__((used)) static void
FUNC9(char *filename)
{
	switch (type) {
	case TYPE_L:
	case TYPE_I: {
		struct stat stbuf;
		if (FUNC8(filename, &stbuf) < 0 || !FUNC0(stbuf.st_mode))
			FUNC7(550, "%s: not a plain file.", filename);
		else
			FUNC7(213, "%lu", (unsigned long)stbuf.st_size);
		break;
	}
	case TYPE_A: {
		FILE *fin;
		int c;
		size_t count;
		struct stat stbuf;
		fin = FUNC3(filename, "r");
		if (fin == NULL) {
			FUNC6(550, filename);
			return;
		}
		if (FUNC4(FUNC2(fin), &stbuf) < 0 || !FUNC0(stbuf.st_mode)) {
			FUNC7(550, "%s: not a plain file.", filename);
			FUNC1(fin);
			return;
		}

		count = 0;
		while((c=FUNC5(fin)) != EOF) {
			if (c == '\n')	/* will get expanded to \r\n */
				count++;
			count++;
		}
		FUNC1(fin);

		FUNC7(213, "%lu", (unsigned long)count);
		break;
	}
	default:
		FUNC7(504, "SIZE not implemented for Type %c.", "?AEIL"[type]);
	}
}