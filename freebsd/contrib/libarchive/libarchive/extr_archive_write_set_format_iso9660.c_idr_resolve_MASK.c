#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct idrent {int noff; TYPE_2__* avail; int /*<<< orphan*/  rbnode; TYPE_1__* isoent; struct idrent* wnext; } ;
struct TYPE_6__ {struct idrent* first; } ;
struct idr {int /*<<< orphan*/  rbtree; int /*<<< orphan*/  null_size; int /*<<< orphan*/  num_size; TYPE_3__ wait_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  rename_num; } ;
struct TYPE_4__ {scalar_t__ identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idrent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct idr *idr, void (*fsetnum)(unsigned char *p, int num))
{
	struct idrent *n;
	unsigned char *p;

	for (n = idr->wait_list.first; n != NULL; n = n->wnext) {
		FUNC1(n, idr->num_size, idr->null_size);
		p = (unsigned char *)n->isoent->identifier + n->noff;
		do {
			fsetnum(p, n->avail->rename_num++);
		} while (!FUNC0(
		    &(idr->rbtree), &(n->rbnode)));
	}
}