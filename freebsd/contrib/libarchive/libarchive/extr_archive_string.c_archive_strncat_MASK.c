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
struct archive_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct archive_string* FUNC1 (struct archive_string*,char const*,size_t) ; 

struct archive_string *
FUNC2(struct archive_string *as, const void *_p, size_t n)
{
	size_t s;
	const char *p, *pp;

	p = (const char *)_p;

	/* Like strlen(p), except won't examine positions beyond p[n]. */
	s = 0;
	pp = p;
	while (s < n && *pp) {
		pp++;
		s++;
	}
	if ((as = FUNC1(as, p, s)) == NULL)
		FUNC0(1, "Out of memory");
	return (as);
}