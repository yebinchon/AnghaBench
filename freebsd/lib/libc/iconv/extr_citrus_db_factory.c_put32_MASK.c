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
typedef  int /*<<< orphan*/  uint32_t ;
struct _region {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _region*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __inline void
FUNC3(struct _region *r, size_t *rofs, uint32_t val)
{

	val = FUNC1(val);
	FUNC2(FUNC0(r, *rofs), &val, 4);
	*rofs += 4;
}