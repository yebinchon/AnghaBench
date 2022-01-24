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
typedef  int /*<<< orphan*/  refcnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __inline unsigned int
FUNC2(refcnt_t *count)
{
	unsigned int old;

	/* XXX: Should this have a rel membar? */
	old = FUNC1(count, -1);
	FUNC0(old > 0);
	return (old - 1);
}