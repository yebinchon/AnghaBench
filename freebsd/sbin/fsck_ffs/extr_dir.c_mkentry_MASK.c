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
struct inodesc {scalar_t__ id_parent; int /*<<< orphan*/  id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; int d_reclen; scalar_t__ d_namlen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  ino_type; } ;

/* Variables and functions */
 int ALTERED ; 
 int FUNC0 (int /*<<< orphan*/ ,struct direct*) ; 
 int KEEPON ; 
 int STOP ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inodesc *idesc)
{
	struct direct *dirp = idesc->id_dirp;
	struct direct newent;
	int newlen, oldlen;

	newent.d_namlen = FUNC3(idesc->id_name);
	newlen = FUNC0(0, &newent);
	if (dirp->d_ino != 0)
		oldlen = FUNC0(0, dirp);
	else
		oldlen = 0;
	if (dirp->d_reclen - oldlen < newlen)
		return (KEEPON);
	newent.d_reclen = dirp->d_reclen - oldlen;
	dirp->d_reclen = oldlen;
	dirp = (struct direct *)(((char *)dirp) + oldlen);
	dirp->d_ino = idesc->id_parent;	/* ino to be entered is in id_parent */
	dirp->d_reclen = newent.d_reclen;
	dirp->d_type = FUNC1(idesc->id_parent)->ino_type;
	dirp->d_namlen = newent.d_namlen;
	FUNC2(dirp->d_name, idesc->id_name, (size_t)newent.d_namlen + 1);
	return (ALTERED|STOP);
}