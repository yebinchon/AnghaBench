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
struct inodesc {int /*<<< orphan*/  id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_reclen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_namlen; } ;

/* Variables and functions */
 int ALTERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct direct*) ; 
 int FOUND ; 
 int KEEPON ; 
 int /*<<< orphan*/  NEWDIRFMT ; 
 int STOP ; 
 scalar_t__ desired ; 
 int /*<<< orphan*/  slotcount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct inodesc *idesc)
{
	struct direct *dirp = idesc->id_dirp;
	struct direct testdir;

	if (slotcount++ == desired) {
	    /* will name fit? */
	    testdir.d_namlen = FUNC2(idesc->id_name);
	    if (FUNC0(NEWDIRFMT, &testdir) <= dirp->d_reclen) {
		dirp->d_namlen = testdir.d_namlen;
		FUNC1(dirp->d_name, idesc->id_name);
		return STOP|ALTERED|FOUND;
	    } else
		return STOP|FOUND;	/* won't fit, so give up */
	}
	return KEEPON;
}