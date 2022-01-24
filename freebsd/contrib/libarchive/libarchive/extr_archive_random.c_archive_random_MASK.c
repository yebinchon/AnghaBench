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
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ NTE_BAD_KEYSET ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 

int
FUNC5(void *buf, size_t nbytes)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	HCRYPTPROV hProv;
	BOOL success;

	success = CryptAcquireContext(&hProv, NULL, NULL, PROV_RSA_FULL,
	    CRYPT_VERIFYCONTEXT);
	if (!success && GetLastError() == (DWORD)NTE_BAD_KEYSET) {
		success = CryptAcquireContext(&hProv, NULL, NULL,
		    PROV_RSA_FULL, CRYPT_NEWKEYSET);
	}
	if (success) {
		success = CryptGenRandom(hProv, (DWORD)nbytes, (BYTE*)buf);
		CryptReleaseContext(hProv, 0);
		if (success)
			return ARCHIVE_OK;
	}
	/* TODO: Does this case really happen? */
	return ARCHIVE_FAILED;
#else
	FUNC4(buf, nbytes);
	return ARCHIVE_OK;
#endif
}