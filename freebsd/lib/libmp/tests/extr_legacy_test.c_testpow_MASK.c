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

/* Variables and functions */
 int /*<<< orphan*/  c10 ; 
 int /*<<< orphan*/  c2 ; 
 int /*<<< orphan*/  c3 ; 
 int /*<<< orphan*/  c8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC0(c2, c3, c10, t0);
	FUNC2(t0, c8, "pow0");
	FUNC0(c2, c3, c3, t0);
	FUNC2(t0, c2, "pow1");
	FUNC1(c2, 3, t0);
	FUNC2(t0, c8, "rpow0");
}