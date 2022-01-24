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
struct libworker {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libworker*) ; 
 int /*<<< orphan*/  FUNC2 (struct libworker*) ; 

void
FUNC3(struct libworker* w)
{
	if(!w) return;
	FUNC2(w);
	FUNC0(w->base);
	FUNC1(w);
}