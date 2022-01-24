#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* SetVariable ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_GUID ;
typedef  int /*<<< orphan*/  CHAR16 ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* RS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(int argc, char *argv[])
{
	char *uuid, *var;
	CHAR16 wvar[128];
	EFI_GUID guid;
#if defined(ENABLE_UPDATES)
	EFI_STATUS err;
#endif

	if (argc != 3) {
		FUNC5("efi-unset uuid var\n");
		return (CMD_ERROR);
	}
	uuid = argv[1];
	var = argv[2];
	if (FUNC3(uuid, &guid) == false) {
		FUNC5("Invalid uuid %s\n", uuid);
		return (CMD_ERROR);
	}
	FUNC2(var, wvar, FUNC4(wvar));
#if defined(ENABLE_UPDATES)
	err = RS->SetVariable(wvar, &guid, 0, 0, NULL);
	if (EFI_ERROR(err)) {
		printf("Failed to unset variable: error %lu\n",
		    EFI_ERROR_CODE(err));
		return (CMD_ERROR);
	}
#else
	FUNC5("would unset %s %s \n", uuid, var);
#endif
	return (CMD_OK);
}