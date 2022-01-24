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
struct files_state {int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static	void
FUNC2(void *p)
{
	FILE * f;

	if (p == NULL)
		return;

	f = ((struct files_state *)p)->fp;
	if (f != NULL)
		FUNC0(f);

	FUNC1(p);
}