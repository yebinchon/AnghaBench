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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(uint32_t * a, size_t len)
{
    size_t i, j;

    if (len <= 1)
	return;

    for (i = 1; i < len; i++) {
	for (j = i;
	     j > 0 &&
		 FUNC0(a[j]) < FUNC0(a[j-1]);
	     j--)
	    FUNC1(&a[j], &a[j-1]);
    }
}