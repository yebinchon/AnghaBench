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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  display_errors ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char const*,struct option const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  no_argument 128 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int argc, char **argv)
{
	static const char short_opts[] = "cdkM:hqQV";
	static const struct option long_opts[] = {
		{ "stdout",       no_argument,         NULL, 'c' },
		{ "to-stdout",    no_argument,         NULL, 'c' },
		{ "decompress",   no_argument,         NULL, 'd' },
		{ "uncompress",   no_argument,         NULL, 'd' },
		{ "keep",         no_argument,         NULL, 'k' },
		{ "quiet",        no_argument,         NULL, 'q' },
		{ "no-warn",      no_argument,         NULL, 'Q' },
		{ "help",         no_argument,         NULL, 'h' },
		{ "version",      no_argument,         NULL, 'V' },
		{ NULL,           0,                   NULL, 0   }
	};

	int c;

	while ((c = FUNC1(argc, argv, short_opts, long_opts, NULL))
			!= -1) {
		switch (c) {
		case 'c':
		case 'd':
		case 'k':
		case 'Q':
			break;

		case 'q':
			if (display_errors > 0)
				--display_errors;

			break;

		case 'h':
			FUNC2();

		case 'V':
			FUNC3();

		default:
			FUNC0(EXIT_FAILURE);
		}
	}

	return;
}