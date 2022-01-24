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
struct isoent {int dummy; } ;
struct idrent {int weight; int noff; struct idrent* wnext; struct idrent* avail; struct isoent* isoent; int /*<<< orphan*/  rbnode; scalar_t__ rename_num; } ;
struct TYPE_2__ {struct idrent** last; } ;
struct idr {TYPE_1__ wait_list; int /*<<< orphan*/  rbtree; int /*<<< orphan*/  pool_idx; struct idrent* idrent_pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct isoent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct idr *idr, struct isoent *isoent, int weight, int noff)
{
	struct idrent *idrent, *n;

	idrent = &(idr->idrent_pool[idr->pool_idx++]);
	idrent->wnext = idrent->avail = NULL;
	idrent->isoent = isoent;
	idrent->weight = weight;
	idrent->noff = noff;
	idrent->rename_num = 0;

	if (!FUNC1(&(idr->rbtree), &(idrent->rbnode))) {
		n = (struct idrent *)FUNC0(
		    &(idr->rbtree), idrent->isoent);
		if (n != NULL) {
			/* this `idrent' needs to rename. */
			idrent->avail = n;
			*idr->wait_list.last = idrent;
			idr->wait_list.last = &(idrent->wnext);
		}
	}
}