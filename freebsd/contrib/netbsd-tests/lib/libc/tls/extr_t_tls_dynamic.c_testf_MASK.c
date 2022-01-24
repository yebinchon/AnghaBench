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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dso_var1 ; 
 int /*<<< orphan*/ * getpid ; 
 int /*<<< orphan*/  optind ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  var1 ; 
 int /*<<< orphan*/  var2 ; 
 int /*<<< orphan*/  var3 ; 
 int /*<<< orphan*/  var4 ; 
 int /*<<< orphan*/  var4_helper ; 

__attribute__((used)) static void *
FUNC2(void *dummy)
{
	FUNC0(var1, 1);
	FUNC0(var2, 0);
	FUNC1(2, 2);
	FUNC0(var1, 2);
	FUNC0(var2, 2);
	FUNC1(3, 3);
	FUNC0(var1, 3);
	FUNC0(var2, 3);
	FUNC0(var3, optind);
	FUNC0(var4, var4_helper);
	FUNC0(dso_var1, *getpid);

	return NULL;
}