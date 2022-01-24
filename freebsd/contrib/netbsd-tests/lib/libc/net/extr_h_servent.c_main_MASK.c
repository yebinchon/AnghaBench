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
struct servent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char**,char*) ; 
 struct servent* FUNC3 (char const*,char const*) ; 
 struct servent* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 struct servent* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (struct servent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	struct servent *svp;
	const char *port = NULL, *proto = NULL, *name = NULL;
	int c;

	while ((c = FUNC2(argc, argv, "p:n:P:")) != -1) {
		switch (c) {
		case 'n':
			name = optarg;
			break;
		case 'p':
			port = optarg;
			break;
		case 'P':
			proto = optarg;
			break;
		default:
			FUNC9();
		}
	}

	if (port && name)
		FUNC9();
	if (port) {
		if ((svp = FUNC4(FUNC6(FUNC0(port)), proto)) != NULL)
			FUNC7(svp);
		return 0;
	}
	if (name) {
		if ((svp = FUNC3(name, proto)) != NULL)
			FUNC7(svp);
		return 0;
	}

	FUNC8(0);
	while ((svp = FUNC5()) != NULL)
		FUNC7(svp);
	FUNC1();
	return 0;
}