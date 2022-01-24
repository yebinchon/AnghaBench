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
struct torus {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct torus*,int,int,int) ; 
 scalar_t__ FUNC1 (struct torus*,int,int,int) ; 

__attribute__((used)) static
bool FUNC2(struct torus *t, int i, int j, int k)
{
	/*
	 * If the dimensions perpendicular to the search direction are
	 * not radix 4 torus dimensions, it is always safe to search for
	 * a perpendicular.
	 *
	 * Implement this by checking for enough appropriate links having
	 * been installed into the torus to prevent an incorrect link from
	 * being considered as a perpendicular candidate.
	 */
	return FUNC0(t, i, j, k) && FUNC1(t, i, j, k);
}