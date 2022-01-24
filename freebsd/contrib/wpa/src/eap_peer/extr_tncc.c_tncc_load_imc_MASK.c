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
struct tnc_if_imc {int /*<<< orphan*/ * path; int /*<<< orphan*/  name; int /*<<< orphan*/ * dlhandle; } ;
typedef  int /*<<< orphan*/  TCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tnc_if_imc*) ; 
 scalar_t__ FUNC6 (struct tnc_if_imc*) ; 
 scalar_t__ FUNC7 (struct tnc_if_imc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct tnc_if_imc *imc)
{
	if (imc->path == NULL) {
		FUNC8(MSG_DEBUG, "TNC: No IMC configured");
		return -1;
	}

	FUNC8(MSG_DEBUG, "TNC: Opening IMC: %s (%s)",
		   imc->name, imc->path);
#ifdef CONFIG_NATIVE_WINDOWS
#ifdef UNICODE
	{
		TCHAR *lib = wpa_strdup_tchar(imc->path);
		if (lib == NULL)
			return -1;
		imc->dlhandle = LoadLibrary(lib);
		os_free(lib);
	}
#else /* UNICODE */
	imc->dlhandle = LoadLibrary(imc->path);
#endif /* UNICODE */
	if (imc->dlhandle == NULL) {
		wpa_printf(MSG_ERROR, "TNC: Failed to open IMC '%s' (%s): %d",
			   imc->name, imc->path, (int) GetLastError());
		return -1;
	}
#else /* CONFIG_NATIVE_WINDOWS */
	imc->dlhandle = FUNC3(imc->path, RTLD_LAZY);
	if (imc->dlhandle == NULL) {
		FUNC8(MSG_ERROR, "TNC: Failed to open IMC '%s' (%s): %s",
			   imc->name, imc->path, FUNC2());
		return -1;
	}
#endif /* CONFIG_NATIVE_WINDOWS */

	if (FUNC7(imc) < 0) {
		FUNC8(MSG_ERROR, "TNC: Failed to resolve IMC functions");
		return -1;
	}

	if (FUNC5(imc) < 0 ||
	    FUNC6(imc) < 0) {
		FUNC8(MSG_ERROR, "TNC: Failed to initialize IMC");
		return -1;
	}

	return 0;
}