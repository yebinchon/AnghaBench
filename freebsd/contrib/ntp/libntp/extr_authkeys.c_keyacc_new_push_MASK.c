#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_5__ {unsigned int subnetbits; struct TYPE_5__* next; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ KeyAccT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

KeyAccT*
FUNC2(
	KeyAccT          * head,
	const sockaddr_u * addr,
	unsigned int	   subnetbits
	)
{
	KeyAccT *	node = FUNC0(sizeof(KeyAccT));
	
	FUNC1(&node->addr, addr, sizeof(sockaddr_u));
	node->subnetbits = subnetbits;
	node->next = head;

	return node;
}