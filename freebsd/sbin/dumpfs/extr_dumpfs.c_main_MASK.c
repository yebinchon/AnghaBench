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

/* Variables and functions */
 int /*<<< orphan*/  disk ; 
 int FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	const char *name;
	int ch, dofreespace, domarshal, dolabel, eval;

	dofreespace = domarshal = dolabel = eval = 0;

	while ((ch = FUNC4(argc, argv, "lfm")) != -1) {
		switch (ch) {
		case 'f':
			dofreespace++;
			break;
		case 'm':
			domarshal = 1;
			break;
		case 'l':
			dolabel = 1;
			break;
		case '?':
		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC9();
	if (dofreespace && domarshal)
		FUNC9();
	if (dofreespace > 2)
		FUNC9();

	while ((name = *argv++) != NULL) {
		if (FUNC7(&disk, name) == -1) {
			FUNC8(name);
			eval |= 1;
			continue;
		}
		if (dofreespace)
			eval |= FUNC0(name, dofreespace);
		else if (domarshal)
			eval |= FUNC5(name);
		else if (dolabel)
			eval |= FUNC2();
		else
			eval |= FUNC1(name);
		FUNC6(&disk);
	}
	FUNC3(eval);
}