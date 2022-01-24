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
 int PAM_NUM_ERRORS ; 
 int* pam_err_name ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

int
FUNC1(int expected, int received)
{

	if (expected == received)
		return (1);
	if (expected >= 0 && expected < PAM_NUM_ERRORS)
		FUNC0("expected %s, ", pam_err_name[expected]);
	else
		FUNC0("expected %d, ", expected);
	if (received >= 0 && received < PAM_NUM_ERRORS)
		FUNC0("received %s\n", pam_err_name[received]);
	else
		FUNC0("received %d\n", received);
	return (0);
}