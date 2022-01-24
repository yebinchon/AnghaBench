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
struct dbm_page {int /*<<< orphan*/ * arch; int /*<<< orphan*/ * sect; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t*,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (size_t) ; 

__attribute__((used)) static char *
FUNC4(const struct dbm_page *page)
{
	char	*buf;
	size_t	 i, sz;

	sz = FUNC2(page->name, 2) + 1 + FUNC2(page->sect, 2) +
	    (page->arch == NULL ? 0 : 1 + FUNC2(page->arch, 2)) + 2;
	buf = FUNC3(sz);
	i = 0;
	FUNC1(buf, &i, page->name, ", ");
	buf[i++] = '(';
	FUNC1(buf, &i, page->sect, ", ");
	if (page->arch != NULL) {
		buf[i++] = '/';
		FUNC1(buf, &i, page->arch, ", ");
	}
	buf[i++] = ')';
	buf[i++] = '\0';
	FUNC0(i == sz);
	return buf;
}