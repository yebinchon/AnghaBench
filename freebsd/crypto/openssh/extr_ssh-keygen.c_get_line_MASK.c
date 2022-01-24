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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(FILE *fp, char *line, size_t len)
{
	int c;
	size_t pos = 0;

	line[0] = '\0';
	while ((c = FUNC1(fp)) != EOF) {
		if (pos >= len - 1)
			FUNC0("input line too long.");
		switch (c) {
		case '\r':
			c = FUNC1(fp);
			if (c != EOF && c != '\n' && FUNC3(c, fp) == EOF)
				FUNC0("unget: %s", FUNC2(errno));
			return pos;
		case '\n':
			return pos;
		}
		line[pos++] = c;
		line[pos] = '\0';
	}
	/* We reached EOF */
	return -1;
}