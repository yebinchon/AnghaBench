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
 int /*<<< orphan*/  PAM_CONV ; 
 int /*<<< orphan*/  PAM_DELETE_CRED ; 
 int /*<<< orphan*/  PAM_SILENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  null_conv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ sshpam_authenticated ; 
 scalar_t__ sshpam_cred_established ; 
 int /*<<< orphan*/  sshpam_err ; 
 int /*<<< orphan*/ * sshpam_handle ; 
 scalar_t__ sshpam_session_open ; 
 scalar_t__ use_privsep ; 

void
FUNC6(void)
{
	if (sshpam_handle == NULL || (use_privsep && !FUNC1()))
		return;
	FUNC0("PAM: cleanup");
	FUNC4(sshpam_handle, PAM_CONV, (const void *)&null_conv);
	if (sshpam_session_open) {
		FUNC0("PAM: closing session");
		FUNC2(sshpam_handle, PAM_SILENT);
		sshpam_session_open = 0;
	}
	if (sshpam_cred_established) {
		FUNC0("PAM: deleting credentials");
		FUNC5(sshpam_handle, PAM_DELETE_CRED);
		sshpam_cred_established = 0;
	}
	sshpam_authenticated = 0;
	FUNC3(sshpam_handle, sshpam_err);
	sshpam_handle = NULL;
}