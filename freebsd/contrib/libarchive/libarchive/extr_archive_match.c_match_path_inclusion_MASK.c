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
typedef  int /*<<< orphan*/  wchar_t ;
struct match {int /*<<< orphan*/  pattern; } ;
struct archive_match {int /*<<< orphan*/  archive; scalar_t__ recursive_include; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int PATHMATCH_NO_ANCHOR_END ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC2 (char const*,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ errno ; 
 int FUNC4 (struct archive_match*) ; 

__attribute__((used)) static int
FUNC5(struct archive_match *a, struct match *m,
    int mbs, const void *pn)
{
	/* Recursive operation requires only a prefix match. */
	int flag = a->recursive_include ?
		PATHMATCH_NO_ANCHOR_END :
		0;
	int r;

	if (mbs) {
		const char *p;
		r = FUNC0(&(a->archive), &(m->pattern), &p);
		if (r == 0)
			return (FUNC2(p, (const char *)pn, flag));
	} else {
		const wchar_t *p;
		r = FUNC1(&(a->archive), &(m->pattern), &p);
		if (r == 0)
			return (FUNC3(p, (const wchar_t *)pn,
				flag));
	}
	if (errno == ENOMEM)
		return (FUNC4(a));
	return (0);
}