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
struct mlink {struct mlink* fsec; struct mlink* name; struct mlink* arch; struct mlink* dsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlink*) ; 

__attribute__((used)) static void
FUNC1(struct mlink *mlink)
{

	FUNC0(mlink->dsec);
	FUNC0(mlink->arch);
	FUNC0(mlink->name);
	FUNC0(mlink->fsec);
	FUNC0(mlink);
}