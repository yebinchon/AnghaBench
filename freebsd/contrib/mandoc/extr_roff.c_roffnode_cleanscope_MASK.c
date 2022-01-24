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
struct roff {TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ endspan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct roff*) ; 

__attribute__((used)) static int
FUNC1(struct roff *r)
{
	int inloop;

	inloop = 0;
	while (r->last != NULL) {
		if (--r->last->endspan != 0)
			break;
		inloop += FUNC0(r);
	}
	return inloop;
}