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
typedef  int /*<<< orphan*/  cookie_t ;
struct TYPE_2__ {int /*<<< orphan*/  initiator; } ;

/* Variables and functions */
 int MAXINITIATORS ; 
 TYPE_1__* cookiecache ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(cookie_t *in)
{
	int i;

	for (i = 0; i < MAXINITIATORS; i++) {
		if (FUNC0(in, &cookiecache[i].initiator, sizeof(*in)) == 0)
			return i;
	}

	return -1;
}