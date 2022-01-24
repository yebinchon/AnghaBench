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
typedef  char wchar_t ;
struct match_list {int unmatched_eof; scalar_t__ unmatched_count; struct match* unmatched_next; struct match* first; } ;
struct match {struct match* next; int /*<<< orphan*/  pattern; scalar_t__ matches; } ;
struct archive_match {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ errno ; 
 int FUNC2 (struct archive_match*) ; 

__attribute__((used)) static int
FUNC3(struct archive_match *a,
    struct match_list *list, int mbs, const void **vp)
{
	struct match *m;

	*vp = NULL;
	if (list->unmatched_eof) {
		list->unmatched_eof = 0;
		return (ARCHIVE_EOF);
	}
	if (list->unmatched_next == NULL) {
		if (list->unmatched_count == 0)
			return (ARCHIVE_EOF);
		list->unmatched_next = list->first;
	}

	for (m = list->unmatched_next; m != NULL; m = m->next) {
		int r;

		if (m->matches)
			continue;
		if (mbs) {
			const char *p;
			r = FUNC0(&(a->archive),
				&(m->pattern), &p);
			if (r < 0 && errno == ENOMEM)
				return (FUNC2(a));
			if (p == NULL)
				p = "";
			*vp = p;
		} else {
			const wchar_t *p;
			r = FUNC1(&(a->archive),
				&(m->pattern), &p);
			if (r < 0 && errno == ENOMEM)
				return (FUNC2(a));
			if (p == NULL)
				p = L"";
			*vp = p;
		}
		list->unmatched_next = m->next;
		if (list->unmatched_next == NULL)
			/* To return EOF next time. */
			list->unmatched_eof = 1;
		return (ARCHIVE_OK);
	}
	list->unmatched_next = NULL;
	return (ARCHIVE_EOF);
}