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
typedef  int /*<<< orphan*/  sidBuffer ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  groupBuffer ;
typedef  int /*<<< orphan*/  domainBuffer ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int GROUP_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  ISC_R_NOPERM ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,char*,int*,int /*<<< orphan*/ *) ; 
 int OWNER_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 

isc_result_t
FUNC6(const char *filename, const char *user) {
	SECURITY_DESCRIPTOR psd;
	BYTE sidBuffer[500];
	BYTE groupBuffer[500];
	PSID psid=(PSID) &sidBuffer;
	DWORD sidBufferSize = sizeof(sidBuffer);
	char domainBuffer[100];
	DWORD domainBufferSize = sizeof(domainBuffer);
	SID_NAME_USE snu;
	PSID pSidGroup = (PSID) &groupBuffer;
	DWORD groupBufferSize = sizeof(groupBuffer);


	/*
	 * Determine if this is a FAT or NTFS disk and
	 * call the appropriate function to set the ownership
	 * FAT disks do not have ownership attributes so it's
	 * a noop.
	 */
	if (FUNC5(filename) == FALSE)
		return (ISC_R_SUCCESS);

	if (!FUNC0(&psd, SECURITY_DESCRIPTOR_REVISION))
		return (ISC_R_NOPERM);

	if (!FUNC1(0, user, psid, &sidBufferSize, domainBuffer,
		&domainBufferSize, &snu))
		return (ISC_R_NOPERM);

	/* Make sure administrators can get to it */
	domainBufferSize = sizeof(domainBuffer);
	if (!FUNC1(0, "Administrators", pSidGroup,
		&groupBufferSize, domainBuffer, &domainBufferSize, &snu))
		return (ISC_R_NOPERM);

	if (!FUNC4(&psd, psid, FALSE))
		return (ISC_R_NOPERM);

	if (!FUNC3(&psd, pSidGroup, FALSE))
		return (ISC_R_NOPERM);

	if (!FUNC2(filename,
		OWNER_SECURITY_INFORMATION | GROUP_SECURITY_INFORMATION,
		&psd))
		return (ISC_R_NOPERM);

	return (ISC_R_SUCCESS);
}