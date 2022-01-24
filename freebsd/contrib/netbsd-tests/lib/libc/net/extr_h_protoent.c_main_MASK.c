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
struct protoent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char**,char*) ; 
 struct protoent* FUNC3 (char const*) ; 
 struct protoent* FUNC4 (int /*<<< orphan*/ ) ; 
 struct protoent* FUNC5 () ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC6 (struct protoent*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	struct protoent *prp;
	const char *proto = NULL, *name = NULL;
	int c;

	while ((c = FUNC2(argc, argv, "p:n:")) != -1) {
		switch (c) {
		case 'n':
			name = optarg;
			break;
		case 'p':
			proto = optarg;
			break;
		default:
			FUNC8();
		}
	}

	if (proto && name)
		FUNC8();
	if (proto) {
		if ((prp = FUNC4(FUNC0(proto))) != NULL)
			FUNC6(prp);
		return 0;
	}
	if (name) {
		if ((prp = FUNC3(name)) != NULL)
			FUNC6(prp);
		return 0;
	}

	FUNC7(0);
	while ((prp = FUNC5()) != NULL)
		FUNC6(prp);
	FUNC1();
	return 0;
}