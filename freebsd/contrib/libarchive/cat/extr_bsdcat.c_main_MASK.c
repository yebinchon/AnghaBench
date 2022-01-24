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
struct bsdcat {char** argv; int argc; } ;

/* Variables and functions */
#define  OPTION_VERSION 128 
 int /*<<< orphan*/  a ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* bsdcat_current_path ; 
 int FUNC1 (struct bsdcat*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_status ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bsdcat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char **argv)
{
	struct bsdcat *bsdcat, bsdcat_storage;
	int c;

	bsdcat = &bsdcat_storage;
	FUNC6(bsdcat, 0, sizeof(*bsdcat));

	FUNC5(*argv, "bsdcat");

	bsdcat->argv = argv;
	bsdcat->argc = argc;

	while ((c = FUNC1(bsdcat)) != -1) {
		switch (c) {
		case 'h':
			FUNC7(stdout, 0);
			break;
		case OPTION_VERSION:
			FUNC8();
			break;
		default:
			FUNC7(stderr, 1);
		}
	}

	FUNC2();
	if (*bsdcat->argv == NULL) {
		bsdcat_current_path = "<stdin>";
		FUNC3(NULL);
	} else {
		while (*bsdcat->argv) {
			bsdcat_current_path = *bsdcat->argv++;
			FUNC3(bsdcat_current_path);
			FUNC2();
		}
		FUNC0(a); /* Help valgrind & friends */
	}

	FUNC4(exit_status);
}