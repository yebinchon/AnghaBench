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
struct netband {int dummy; } ;
typedef  int /*<<< orphan*/  netband_head ;

/* Variables and functions */
 struct netband* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netband*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netband*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC3(netband_head *head)
{
	struct netband *nb;

	for (;;) {
		nb = FUNC0(head);
		if (nb == NULL)
			break;
		FUNC1(nb, next);
		FUNC2(nb);
	}
}