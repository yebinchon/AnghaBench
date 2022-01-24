#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * conv; } ;

/* Variables and functions */
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  openpam_ttyconv ; 
 int FUNC0 (char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ pamc ; 
 int /*<<< orphan*/  pamh ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *service, const char *user)
{
	int pame;

	pamc.conv = &openpam_ttyconv;
	FUNC2("pam_start(%s, %s)", service, user);
	if ((pame = FUNC0(service, user, &pamc, &pamh)) != PAM_SUCCESS)
		FUNC1(pame, "pam_start(%s)", service);
	return (pame);
}