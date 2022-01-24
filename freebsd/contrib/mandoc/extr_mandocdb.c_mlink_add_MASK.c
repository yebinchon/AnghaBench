#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; } ;
struct mpage {char* dsec; char* arch; char* name; char* fsec; struct mpage* mpage; struct mpage* mlinks; struct mpage* next; void* form; TYPE_1__ inodev; int /*<<< orphan*/ * file; void* fform; } ;
struct mlink {char* dsec; char* arch; char* name; char* fsec; struct mlink* mpage; struct mlink* mlinks; struct mlink* next; void* form; TYPE_1__ inodev; int /*<<< orphan*/ * file; void* fform; } ;
struct inodev {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; } ;
typedef  int /*<<< orphan*/  inodev ;

/* Variables and functions */
 void* FORM_CAT ; 
 void* FORM_NONE ; 
 void* FORM_SRC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct mpage* FUNC2 (int,int) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct inodev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mlinks ; 
 struct mpage* mpage_head ; 
 int /*<<< orphan*/  mpages ; 
 struct mpage* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,struct mpage*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mlink *mlink, const struct stat *st)
{
	struct inodev	 inodev;
	struct mpage	*mpage;
	unsigned int	 slot;

	FUNC0(NULL != mlink->file);

	mlink->dsec = FUNC3(mlink->dsec ? mlink->dsec : "");
	mlink->arch = FUNC3(mlink->arch ? mlink->arch : "");
	mlink->name = FUNC3(mlink->name ? mlink->name : "");
	mlink->fsec = FUNC3(mlink->fsec ? mlink->fsec : "");

	if ('0' == *mlink->fsec) {
		FUNC1(mlink->fsec);
		mlink->fsec = FUNC3(mlink->dsec);
		mlink->fform = FORM_CAT;
	} else if ('1' <= *mlink->fsec && '9' >= *mlink->fsec)
		mlink->fform = FORM_SRC;
	else
		mlink->fform = FORM_NONE;

	slot = FUNC8(&mlinks, mlink->file);
	FUNC0(NULL == FUNC5(&mlinks, slot));
	FUNC6(&mlinks, slot, mlink);

	FUNC4(&inodev, 0, sizeof(inodev));  /* Clear padding. */
	inodev.st_ino = st->st_ino;
	inodev.st_dev = st->st_dev;
	slot = FUNC7(&mpages, (char *)&inodev,
	    sizeof(struct inodev), inodev.st_ino);
	mpage = FUNC5(&mpages, slot);
	if (NULL == mpage) {
		mpage = FUNC2(1, sizeof(struct mpage));
		mpage->inodev.st_ino = inodev.st_ino;
		mpage->inodev.st_dev = inodev.st_dev;
		mpage->form = FORM_NONE;
		mpage->next = mpage_head;
		mpage_head = mpage;
		FUNC6(&mpages, slot, mpage);
	} else
		mlink->next = mpage->mlinks;
	mpage->mlinks = mlink;
	mlink->mpage = mpage;
}