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
struct termp {int dummy; } ;
struct roffsu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct termp const*,struct roffsu const*) ; 

__attribute__((used)) static size_t
FUNC1(const struct roffsu *su, void *arg)
{
	int	 i;

	i = FUNC0((const struct termp *)arg, su);
	return i > 0 ? i : 0;
}