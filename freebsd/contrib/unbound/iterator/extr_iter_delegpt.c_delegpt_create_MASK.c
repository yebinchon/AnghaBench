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
struct regional {int dummy; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct regional*,int) ; 

struct delegpt* 
FUNC2(struct regional* region)
{
	struct delegpt* dp=(struct delegpt*)FUNC1(
		region, sizeof(*dp));
	if(!dp)
		return NULL;
	FUNC0(dp, 0, sizeof(*dp));
	return dp;
}