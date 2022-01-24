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
struct sigev_node {int sn_flags; TYPE_1__* sn_tn; } ;
struct TYPE_2__ {scalar_t__ tn_refcount; int /*<<< orphan*/  tn_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sigev_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGLIBRT ; 
 int SNF_REMOVED ; 
 int SNF_WORKING ; 
 int /*<<< orphan*/  FUNC1 (struct sigev_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn_link ; 

int
FUNC3(struct sigev_node *sn)
{
	FUNC0(sn, sn_link);

	if (--sn->sn_tn->tn_refcount == 0)
		FUNC2(sn->sn_tn->tn_thread, SIGLIBRT);
	if (sn->sn_flags & SNF_WORKING)
		sn->sn_flags |= SNF_REMOVED;
	else
		FUNC1(sn);
	return (0);
}