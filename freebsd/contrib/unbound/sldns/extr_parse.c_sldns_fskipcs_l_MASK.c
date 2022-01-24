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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void
FUNC2(FILE *fp, const char *s, int *line_nr)
{
        int found;
        int c;
        const char *d;

	while ((c = FUNC0(fp)) != EOF) {
		if (line_nr && c == '\n') {
			*line_nr = *line_nr + 1;
		}
                found = 0;
                for (d = s; *d; d++) {
                        if (*d == c) {
                                found = 1;
                        }
                }
		if (!found) {
			/* with getc, we've read too far */
			FUNC1(c, fp);
			return;
		}
	}
}