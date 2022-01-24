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
struct memstream {int offset; int len; int* bufp; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct memstream*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct memstream*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct memstream*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(void *cookie, const char *buf, int len)
{
	struct memstream *ms;
	ssize_t tocopy;

	ms = cookie;
	if (!FUNC2(ms, ms->offset + len))
		return (-1);
	tocopy = ms->len - ms->offset;
	if (len < tocopy)
		tocopy = len;
	FUNC1(*ms->bufp + ms->offset, buf, tocopy);
	ms->offset += tocopy;
	FUNC3(ms);
#ifdef DEBUG
	fprintf(stderr, "MS: write(%p, %d) = %zd\n", ms, len, tocopy);
#endif
	return (tocopy);
}