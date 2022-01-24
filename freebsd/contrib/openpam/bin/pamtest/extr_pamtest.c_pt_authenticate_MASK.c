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
 int PAM_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pamh ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int silent ; 

__attribute__((used)) static int
FUNC3(int flags)
{
	int pame;

	flags |= silent;
	FUNC2("pam_authenticate()");
	if ((pame = FUNC0(pamh, flags)) != PAM_SUCCESS)
		FUNC1(pame, "pam_authenticate()");
	return (pame);
}