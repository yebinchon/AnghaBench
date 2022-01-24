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
struct mpage {scalar_t__ form; struct mlink* mlinks; } ;
struct mlink {scalar_t__ dform; struct mlink* next; int /*<<< orphan*/  file; int /*<<< orphan*/  dsec; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FORM_CAT ; 
 scalar_t__ FORM_NONE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlink*) ; 
 int /*<<< orphan*/  mlinks ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*,char*) ; 
 scalar_t__ use_all ; 
 scalar_t__ warnings ; 

__attribute__((used)) static void
FUNC10(struct mpage *mpage)
{
	char		  buf[PATH_MAX];
	struct mlink	**prev;
	struct mlink	 *mlink;
	char		 *bufp;

	mpage->form = FORM_CAT;
	prev = &mpage->mlinks;
	while (NULL != (mlink = *prev)) {
		if (FORM_CAT != mlink->dform) {
			mpage->form = FORM_NONE;
			goto nextlink;
		}
		(void)FUNC7(buf, mlink->file, sizeof(buf));
		bufp = FUNC9(buf, "cat");
		FUNC0(NULL != bufp);
		FUNC1(bufp, "man", 3);
		if (NULL != (bufp = FUNC8(buf, '.')))
			*++bufp = '\0';
		(void)FUNC6(buf, mlink->dsec, sizeof(buf));
		if (NULL == FUNC3(&mlinks,
		    FUNC4(&mlinks, buf)))
			goto nextlink;
		if (warnings)
			FUNC5(mlink->file, "Man source exists: %s", buf);
		if (use_all)
			goto nextlink;
		*prev = mlink->next;
		FUNC2(mlink);
		continue;
nextlink:
		prev = &(*prev)->next;
	}
}