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
typedef  union dinode {int dummy; } dinode ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 union dinode* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union dinode*) ; 

__attribute__((used)) static void
FUNC5(ino_t ino, ino_t parent)
{
	union dinode *dp;

	if (ino != parent) {
		dp = FUNC3(parent);
		FUNC1(dp, di_nlink, FUNC0(dp, di_nlink) - 1);
		FUNC4(dp);
	}
	FUNC2(ino);
}