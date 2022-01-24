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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int BE_DESTROY_AUTOORIGIN ; 
 int BE_DESTROY_FORCE ; 
 int BE_DESTROY_ORIGIN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  be ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC9 (char*,char) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(int argc, char *argv[])
{
	nvlist_t *props;
	char *origin, *target, targetds[BE_MAXPATHLEN];
	int err, flags, opt;

	flags = 0;
	while ((opt = FUNC7(argc, argv, "Fo")) != -1) {
		switch (opt) {
		case 'F':
			flags |= BE_DESTROY_FORCE;
			break;
		case 'o':
			flags |= BE_DESTROY_ORIGIN;
			break;
		default:
			FUNC6(stderr, "bectl destroy: unknown option '-%c'\n",
			    optopt);
			return (FUNC10(false));
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC6(stderr, "bectl destroy: wrong number of arguments\n");
		return (FUNC10(false));
	}

	target = argv[0];

	/* We'll emit a notice if there's an origin to be cleaned up */
	if ((flags & BE_DESTROY_ORIGIN) == 0 && FUNC9(target, '@') == NULL) {
		flags |= BE_DESTROY_AUTOORIGIN;
		if (FUNC5(be, target, targetds) != 0)
			goto destroy;
		if (FUNC3(&props) != 0)
			goto destroy;
		if (FUNC1(be, targetds, props) != 0) {
			FUNC4(props);
			goto destroy;
		}
		if (FUNC8(props, "origin", &origin) == 0 &&
		    !FUNC2(be, origin))
			FUNC6(stderr, "bectl destroy: leaving origin '%s' intact\n",
			    origin);
		FUNC4(props);
	}

destroy:
	err = FUNC0(be, target, flags);

	return (err);
}