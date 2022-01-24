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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int UINTN ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;
typedef  char EFI_DEVICE_PATH ;
typedef  scalar_t__ CHAR16 ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int CMD_WARN ; 
 scalar_t__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (scalar_t__ const*,char**) ; 

__attribute__((used)) static int
FUNC11(const CHAR16 *varnamearg, uint8_t *data, UINTN datasz)
{
	int rv = -1;
	char *var = NULL;

	if (FUNC10(varnamearg, &var) != 0)
		return (CMD_ERROR);

	if (FUNC8("AuditMode", var) == 0) {
		FUNC7(" = ");
		FUNC7("0x%x", *data);	/* 8-bit int */
		goto done;
	}

	if (FUNC8("BootOptionSupport", var) == 0) {
		FUNC7(" = ");
		FUNC7("0x%x", *((uint32_t *)data));	/* UINT32 */
		goto done;
	}

	if (FUNC8("BootCurrent", var) == 0 ||
	    FUNC8("BootNext", var) == 0 ||
	    FUNC8("Timeout", var) == 0) {
		FUNC7(" = ");
		FUNC7("%u", *((uint16_t *)data));	/* UINT16 */
		goto done;
	}

	if (FUNC8("BootOrder", var) == 0 ||
	    FUNC8("DriverOrder", var) == 0) {
		UINTN i;
		UINT16 *u16 = (UINT16 *)data;

		FUNC7(" =");
		for (i = 0; i < datasz / sizeof (UINT16); i++)
			FUNC7(" %u", u16[i]);
		goto done;
	}
	if (FUNC9("Boot", var, 4) == 0 ||
	    FUNC9("Driver", var, 5) == 0 ||
	    FUNC9("SysPrep", var, 7) == 0 ||
	    FUNC9("OsRecovery", var, 10) == 0) {
		UINT16 filepathlistlen;
		CHAR16 *text;
		int desclen;
		EFI_DEVICE_PATH *dp;

		data += sizeof(UINT32);
		filepathlistlen = *(uint16_t *)data;
		data += sizeof (UINT16);
		text = (CHAR16 *)data;

		for (desclen = 0; text[desclen] != 0; desclen++)
			;
		if (desclen != 0) {
			/* Add terminating zero and we have CHAR16. */
			desclen = (desclen + 1) * 2;
		}

		FUNC7(" = ");
		FUNC7("%S", text);
		if (filepathlistlen != 0) {
			/* Output pathname from new line. */
			if (FUNC6("\n")) {
				rv = CMD_WARN;
				goto done;
			}
			dp = FUNC4(filepathlistlen);
			if (dp == NULL)
				goto done;

			FUNC5(dp, data + desclen, filepathlistlen);
			text = FUNC0(dp);
			if (text != NULL) {
				FUNC7("\t%S", text);
				FUNC1(text);
			}
			FUNC3(dp);
		}
		goto done;
	}

	if (FUNC8("ConIn", var) == 0 ||
	    FUNC8("ConInDev", var) == 0 ||
	    FUNC8("ConOut", var) == 0 ||
	    FUNC8("ConOutDev", var) == 0 ||
	    FUNC8("ErrOut", var) == 0 ||
	    FUNC8("ErrOutDev", var) == 0) {
		CHAR16 *text;

		FUNC7(" = ");
		text = FUNC0((EFI_DEVICE_PATH *)data);
		if (text != NULL) {
			FUNC7("%S", text);
			FUNC1(text);
		}
		goto done;
	}

	if (FUNC8("PlatformLang", var) == 0 ||
	    FUNC8("PlatformLangCodes", var) == 0 ||
	    FUNC8("LangCodes", var) == 0 ||
	    FUNC8("Lang", var) == 0) {
		FUNC7(" = ");
		FUNC7("%s", data);	/* ASCII string */
		goto done;
	}

	/*
	 * Feature bitmap from firmware to OS.
	 * Older UEFI provides UINT32, newer UINT64.
	 */
	if (FUNC8("OsIndicationsSupported", var) == 0) {
		FUNC7(" = ");
		if (datasz == 4)
			FUNC7("0x%x", *((uint32_t *)data));
		else
			FUNC7("0x%jx", *((uint64_t *)data));
		goto done;
	}

	/* Fallback for anything else. */
	rv = FUNC2(data, datasz);
done:
	if (rv == -1) {
		if (FUNC6("\n"))
			rv = CMD_WARN;
		else
			rv = CMD_OK;
	}
	FUNC3(var);
	return (rv);
}