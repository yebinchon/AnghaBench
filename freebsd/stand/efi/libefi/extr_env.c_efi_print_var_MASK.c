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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ UINTN ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_2__ {scalar_t__ (* GetVariable ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,char*) ;} ;
typedef  scalar_t__ EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_GUID ;
typedef  int /*<<< orphan*/  CHAR16 ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int CMD_WARN ; 
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 int FUNC0 (scalar_t__) ; 
 char* EFI_MEMORY_TYPE_INFORMATION_VARIABLE_NAME ; 
 scalar_t__ EFI_SUCCESS ; 
 char* MTC_VARIABLE_NAME ; 
 TYPE_1__* RS ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,char*) ; 

__attribute__((used)) static int
FUNC15(CHAR16 *varnamearg, EFI_GUID *matchguid, int lflag)
{
	UINTN		datasz;
	EFI_STATUS	status;
	UINT32		attr;
	char		*str;
	uint8_t		*data;
	int		rv = CMD_OK;

	str = NULL;
	datasz = 0;
	status = RS->GetVariable(varnamearg, matchguid, &attr, &datasz, NULL);
	if (status != EFI_BUFFER_TOO_SMALL) {
		FUNC11("Can't get the variable: error %#lx\n",
		    FUNC0(status));
		return (CMD_ERROR);
	}
	data = FUNC9(datasz);
	if (data == NULL) {
		FUNC11("Out of memory\n");
		return (CMD_ERROR);
	}

	status = RS->GetVariable(varnamearg, matchguid, &attr, &datasz, data);
	if (status != EFI_SUCCESS) {
		FUNC11("Can't get the variable: error %#lx\n",
		    FUNC0(status));
		FUNC8(data);
		return (CMD_ERROR);
	}

	if (FUNC1(matchguid, &str) == false) {
		rv = CMD_ERROR;
		goto done;
	}
	FUNC11("%s ", str);
	FUNC7(attr);
	FUNC11(" %S", varnamearg);

	if (lflag == 0) {
		if (FUNC12(str, "global") == 0)
			rv = FUNC3(varnamearg, data, datasz);
		else if (FUNC12(str, "freebsd") == 0)
			rv = FUNC2(varnamearg, data, datasz);
		else if (FUNC12(str,
		    EFI_MEMORY_TYPE_INFORMATION_VARIABLE_NAME) == 0)
			rv = FUNC4(varnamearg, data, datasz);
		else if (FUNC12(str,
		    "47c7b227-c42a-11d2-8e57-00a0c969723b") == 0)
			rv = FUNC6(varnamearg, data, datasz);
		else if (FUNC12(str, MTC_VARIABLE_NAME) == 0) {
			FUNC11(" = ");
			FUNC11("%u", *((uint32_t *)data));	/* UINT32 */
			rv = CMD_OK;
			if (FUNC10("\n"))
				rv = CMD_WARN;
		} else
			rv = FUNC5(data, datasz);
	} else if (FUNC10("\n"))
		rv =  CMD_WARN;

done:
	FUNC8(str);
	FUNC8(data);
	return (rv);
}