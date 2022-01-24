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
struct ip_reasm {struct ip_reasm* ip_pkt; struct ip_reasm* ipq_pkt; int /*<<< orphan*/  ip_queue; } ;
struct ip_queue {struct ip_queue* ip_pkt; struct ip_queue* ipq_pkt; int /*<<< orphan*/  ip_queue; } ;

/* Variables and functions */
 struct ip_reasm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_reasm*) ; 
 int /*<<< orphan*/  ipq_next ; 

__attribute__((used)) static void
FUNC3(struct ip_reasm *ipr)
{
	struct ip_queue *ipq;

	while ((ipq = FUNC0(&ipr->ip_queue)) != NULL) {
		FUNC1(&ipr->ip_queue, ipq_next);
		FUNC2(ipq->ipq_pkt);
		FUNC2(ipq);
	}
	FUNC2(ipr->ip_pkt);
	FUNC2(ipr);
}