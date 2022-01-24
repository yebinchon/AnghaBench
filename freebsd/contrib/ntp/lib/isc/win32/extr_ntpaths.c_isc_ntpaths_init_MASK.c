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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_SUBKEY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ Initialized ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  baseLen ; 
 scalar_t__ local_state_dir ; 
 scalar_t__ lwresd_confFile ; 
 scalar_t__ lwresd_defaultpidfile ; 
 scalar_t__ lwresd_resolvconfFile ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ namedBase ; 
 scalar_t__ ns_confFile ; 
 scalar_t__ ns_defaultpidfile ; 
 scalar_t__ rndc_confFile ; 
 scalar_t__ rndc_keyFile ; 
 scalar_t__ session_keyFile ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ sys_conf_dir ; 
 scalar_t__ systemDir ; 

void
FUNC7() {
	HKEY hKey;
	BOOL keyFound = TRUE;

	FUNC4(namedBase, 0, MAX_PATH);
	if (FUNC2(HKEY_LOCAL_MACHINE, BIND_SUBKEY, 0, KEY_READ, &hKey)
		!= ERROR_SUCCESS)
		keyFound = FALSE;

	if (keyFound == TRUE) {
		/* Get the named directory */
		if (FUNC3(hKey, "InstallDir", NULL, NULL,
			(LPBYTE)namedBase, &baseLen) != ERROR_SUCCESS)
			keyFound = FALSE;
		FUNC1(hKey);
	}

	FUNC0(systemDir, MAX_PATH);

	if (keyFound == FALSE)
		/* Use the System Directory as a default */
		FUNC6(namedBase, systemDir);

	FUNC6(ns_confFile, namedBase);
	FUNC5(ns_confFile, "\\etc\\named.conf");

	FUNC6(lwresd_confFile, namedBase);
	FUNC5(lwresd_confFile, "\\etc\\lwresd.conf");

	FUNC6(lwresd_resolvconfFile, systemDir);
	FUNC5(lwresd_resolvconfFile, "\\Drivers\\etc\\resolv.conf");

	FUNC6(rndc_keyFile, namedBase);
	FUNC5(rndc_keyFile, "\\etc\\rndc.key");

	FUNC6(session_keyFile, namedBase);
	FUNC5(session_keyFile, "\\etc\\session.key");

	FUNC6(rndc_confFile, namedBase);
	FUNC5(rndc_confFile, "\\etc\\rndc.conf");
	FUNC6(ns_defaultpidfile, namedBase);
	FUNC5(ns_defaultpidfile, "\\etc\\named.pid");

	FUNC6(lwresd_defaultpidfile, namedBase);
	FUNC5(lwresd_defaultpidfile, "\\etc\\lwresd.pid");

	FUNC6(local_state_dir, namedBase);
	FUNC5(local_state_dir, "\\bin");

	FUNC6(sys_conf_dir, namedBase);
	FUNC5(sys_conf_dir, "\\etc");

	Initialized = TRUE;
}