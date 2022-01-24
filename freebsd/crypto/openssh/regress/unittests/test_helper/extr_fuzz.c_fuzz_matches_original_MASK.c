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
struct fuzz {scalar_t__ slen; int /*<<< orphan*/  seed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuzz*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC3(struct fuzz *fuzz)
{
	if (FUNC0(fuzz) != fuzz->slen)
		return 0;
	return FUNC2(FUNC1(fuzz), fuzz->seed, fuzz->slen) == 0;
}