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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  command_errbuf ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[], int start, char **buffer)
{
	char *buf;
	int i, idx, sz;

	*buffer = NULL;
	sz = 0;

	for (i = start; i < argc; i++)
		sz += FUNC4(argv[i]);

	/* Additional bytes for whitespaces between args */
	sz += argc - start;

	buf = (char *)FUNC1(sizeof(char) * sz);
	if (buf == NULL) {
		FUNC2(command_errbuf, "could not allocate space "
		    "for string");
		return (1);
	}
	FUNC0(buf, sizeof(char) * sz);

	idx = 0;
	for (i = start, idx = 0; i < argc; i++) {
		FUNC3(buf + idx, argv[i]);
		idx += FUNC4(argv[i]);
		buf[idx] = ' ';
		idx++;
	}
	buf[sz - 1] = '\0';
	*buffer = buf;
	return (0);
}