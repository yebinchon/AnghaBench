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
struct camq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMQ ; 
 int /*<<< orphan*/  FUNC0 (struct camq*) ; 
 int /*<<< orphan*/  FUNC1 (struct camq*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct camq *queue)
{
	if (queue != NULL) {
		FUNC0(queue);
		FUNC1(queue, M_CAMQ);
	}
}