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
struct p2p_data {int /*<<< orphan*/ * go_neg_peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct p2p_data *p2p)
{
	p2p->go_neg_peer = NULL;
	FUNC0(p2p);
	FUNC1(p2p, P2P_IDLE);
}