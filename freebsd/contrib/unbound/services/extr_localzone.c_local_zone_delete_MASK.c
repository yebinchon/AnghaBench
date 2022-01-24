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
struct local_zone {struct local_zone* taglist; struct local_zone* name; int /*<<< orphan*/  region; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct local_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void 
FUNC3(struct local_zone* z)
{
	if(!z)
		return;
	FUNC1(&z->lock);
	FUNC2(z->region);
	FUNC0(z->name);
	FUNC0(z->taglist);
	FUNC0(z);
}