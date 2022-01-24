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
 char* FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(FILE *out, FILE *in)
{
	size_t len;
	char *line, *p, *q;
	int comment, tag;

	comment = tag = 0;
	while ((line = FUNC0(in, &len)) != NULL) {
		while (len && FUNC3((unsigned char)line[len - 1]))
			--len;
		for (p = q = line; q < line + len; ++q) {
			if (comment && *q == '-') {
				if (q + 2 < line + len &&
				    FUNC4(q, "-->") == 0) {
					tag = comment = 0;
					q += 2;
				}
			} else if (tag && !comment && *q == '>') {
				p = q + 1;
				tag = 0;
			} else if (!tag && *q == '<') {
				if (q > p)
					FUNC2(p, q - p, 1, out);
				tag = 1;
				if (q + 3 < line + len &&
				    FUNC4(q, "<!--") == 0) {
					comment = 1;
					q += 3;
				}
			}
		}
		if (!tag && q > p)
			FUNC2(p, q - p, 1, out);
		FUNC1('\n', out);
	}
}