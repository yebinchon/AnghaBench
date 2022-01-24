#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct roffkv* p; } ;
struct TYPE_3__ {struct roffkv* p; } ;
struct roffkv {struct roffkv* next; TYPE_2__ val; TYPE_1__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roffkv*) ; 

__attribute__((used)) static void
FUNC1(struct roffkv *r)
{
	struct roffkv	 *n, *nn;

	for (n = r; n; n = nn) {
		FUNC0(n->key.p);
		FUNC0(n->val.p);
		nn = n->next;
		FUNC0(n);
	}
}