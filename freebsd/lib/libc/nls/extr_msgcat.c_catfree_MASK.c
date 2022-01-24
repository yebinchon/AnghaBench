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
struct catentry {struct catentry* lang; struct catentry* path; struct catentry* name; struct catentry* catd; scalar_t__ __size; int /*<<< orphan*/  __data; } ;

/* Variables and functions */
 struct catentry* NLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct catentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cache ; 
 int /*<<< orphan*/  catentry ; 
 int /*<<< orphan*/  FUNC1 (struct catentry*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC3(struct catentry *np)
{

	if (np->catd != NULL && np->catd != NLERR) {
		FUNC2(np->catd->__data, (size_t)np->catd->__size);
		FUNC1(np->catd);
	}
	FUNC0(&cache, np, catentry, list);
	FUNC1(np->name);
	FUNC1(np->path);
	FUNC1(np->lang);
	FUNC1(np);
}