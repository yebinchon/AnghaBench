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
struct mpage {struct mpage* desc; struct mpage* title; struct mpage* arch; struct mpage* sec; struct mpage* next; struct mlink* mlinks; } ;
struct mlink {struct mlink* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpage*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlink*) ; 
 struct mpage* mpage_head ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct mpage	*mpage;
	struct mlink	*mlink;

	while ((mpage = mpage_head) != NULL) {
		while ((mlink = mpage->mlinks) != NULL) {
			mpage->mlinks = mlink->next;
			FUNC1(mlink);
		}
		mpage_head = mpage->next;
		FUNC0(mpage->sec);
		FUNC0(mpage->arch);
		FUNC0(mpage->title);
		FUNC0(mpage->desc);
		FUNC0(mpage);
	}
}