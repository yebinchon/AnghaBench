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
struct fmt {char* width; } ;
struct bsdstat {unsigned char* fmts; scalar_t__ (* get_totstat ) (struct bsdstat*,int,char*,int) ;struct fmt* stats; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned char const FMTS_IS_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bsdstat*,int,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct bsdstat *sf, FILE *fd)
{
	char buf[32];
	const unsigned char *cp;
	const struct fmt *f;
	int i;

	for (cp = sf->fmts; *cp != '\0'; cp++) {
		if (*cp == FMTS_IS_STAT) {
			i = *(++cp);
			i |= ((int) *(++cp)) << 8;
			f = &sf->stats[i];
			if (sf->get_totstat(sf, i, buf, sizeof(buf)))
				FUNC0(fd, "%*s", f->width, buf);
		} else
			FUNC1(*cp, fd);
	}
	FUNC1('\n', fd);
}