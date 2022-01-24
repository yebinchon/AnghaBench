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
typedef  int /*<<< orphan*/  uint8_t ;
struct delegpt {int dp_type_mlc; int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  namelabs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct delegpt* FUNC4(uint8_t* name)
{
	struct delegpt* dp=(struct delegpt*)FUNC0(1, sizeof(*dp));
	if(!dp)
		return NULL;
	dp->dp_type_mlc = 1;
	if(name) {
		dp->namelabs = FUNC1(name, &dp->namelen);
		dp->name = FUNC3(name, dp->namelen);
		if(!dp->name) {
			FUNC2(dp);
			return NULL;
		}
	}
	return dp;
}