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
struct bwlimit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwlimit*,size_t) ; 

__attribute__((used)) static int
FUNC1(void *_bwlimit, size_t amount)
{
	struct bwlimit *bwlimit = (struct bwlimit *)_bwlimit;

	FUNC0(bwlimit, amount);
	return 0;
}