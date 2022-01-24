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
struct option {char* member_0; int member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  no_argument 128 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int argc, char **argv)
{
	enum {
		OPT_HELP,
		OPT_VERSION,
	};

	static const struct option long_opts[] = {
		{ "help",    no_argument, NULL, OPT_HELP },
		{ "version", no_argument, NULL, OPT_VERSION },
		{ NULL,      0,           NULL, 0 }
	};

	int c;
	while ((c = FUNC1(argc, argv, "", long_opts, NULL)) != -1) {
		switch (c) {
		case OPT_HELP:
			FUNC2();

		case OPT_VERSION:
			FUNC3();

		default:
			FUNC0(EXIT_FAILURE);
		}
	}

	return;
}