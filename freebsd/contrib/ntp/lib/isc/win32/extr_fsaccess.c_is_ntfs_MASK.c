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
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FSType ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 

BOOL
FUNC9(const char * file) {

	char drive[255];
	char FSType[20];
	char tmpbuf[256];
	char *machinename;
	char *sharename;
	char filename[1024];

	FUNC1(filename != NULL);

	if (FUNC3(file, filename,
		sizeof(filename)) != ISC_R_SUCCESS) {
		return (FALSE);
	}

	/*
	 * Look for c:\path\... style, c:/path/... or \\computer\shar\path...
	 * the UNC style file specs
	 */
	if (FUNC2(filename[0]) && filename[1] == ':' && 
		(filename[2] == '\\' || filename[2] == '/')) {
		FUNC7(drive, filename, 3);
		drive[3] = '\0';
	}

	else if ((filename[0] == '\\') && (filename[1] == '\\')) {
		/* Find the machine and share name and rebuild the UNC */
		FUNC6(tmpbuf, filename);
		machinename = FUNC8(tmpbuf, "\\");
		sharename = FUNC8(NULL, "\\");
		FUNC6(drive, "\\\\");
		FUNC4(drive, machinename);
		FUNC4(drive, "\\");
		FUNC4(drive, sharename);
		FUNC4(drive, "\\");

	}
	else /* Not determinable */
		return (FALSE);
		
	FUNC0(drive, NULL, 0, NULL, 0, NULL, FSType,
			     sizeof(FSType));
	if(FUNC5(FSType,"NTFS") == 0)
		return (TRUE);
	else
		return (FALSE);
}