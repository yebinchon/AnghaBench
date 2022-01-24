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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int UINTN ;
struct TYPE_2__ {scalar_t__ (* GetNextVariableName ) (int*,char*,int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_GUID ;
typedef  char CHAR16 ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int CMD_WARN ; 
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 TYPE_1__* RS ; 
 int /*<<< orphan*/  ZERO_GUID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (int) ; 
 unsigned int FUNC6 (char*) ; 
 char* optarg ; 
 int opterr ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (char*,int) ; 
 unsigned int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(int argc, char *argv[])
{
	/*
	 * efi-show [-a]
	 *	print all the env
	 * efi-show -g UUID
	 *	print all the env vars tagged with UUID
	 * efi-show -v var
	 *	search all the env vars and print the ones matching var
	 * efi-show -g UUID -v var
	 * efi-show UUID var
	 *	print all the env vars that match UUID and var
	 */
	/* NB: We assume EFI_GUID is the same as uuid_t */
	int		aflag = 0, gflag = 0, lflag = 0, vflag = 0;
	int		ch, rv;
	unsigned	i;
	EFI_STATUS	status;
	EFI_GUID	varguid = ZERO_GUID;
	EFI_GUID	matchguid = ZERO_GUID;
	CHAR16		*varname;
	CHAR16		*newnm;
	CHAR16		varnamearg[128];
	UINTN		varalloc;
	UINTN		varsz;

	optind = 1;
	optreset = 1;
	opterr = 1;

	while ((ch = FUNC4(argc, argv, "ag:lv:")) != -1) {
		switch (ch) {
		case 'a':
			aflag = 1;
			break;
		case 'g':
			gflag = 1;
			if (FUNC1(optarg, &matchguid) == false) {
				FUNC9("uuid %s could not be parsed\n", optarg);
				return (CMD_ERROR);
			}
			break;
		case 'l':
			lflag = 1;
			break;
		case 'v':
			vflag = 1;
			if (FUNC11(optarg) >= FUNC6(varnamearg)) {
				FUNC9("Variable %s is longer than %zu "
				    "characters\n", optarg, FUNC6(varnamearg));
				return (CMD_ERROR);
			}
			FUNC0(optarg, varnamearg, FUNC6(varnamearg));
			break;
		default:
			return (CMD_ERROR);
		}
	}

	if (argc == 1)		/* default is -a */
		aflag = 1;

	if (aflag && (gflag || vflag)) {
		FUNC9("-a isn't compatible with -g or -v\n");
		return (CMD_ERROR);
	}

	if (aflag && optind < argc) {
		FUNC9("-a doesn't take any args\n");
		return (CMD_ERROR);
	}

	argc -= optind;
	argv += optind;

	FUNC8();
	if (vflag && gflag) {
		rv = FUNC2(varnamearg, &matchguid, lflag);
		if (rv == CMD_WARN)
			rv = CMD_OK;
		FUNC7();
		return (rv);
	}

	if (argc == 2) {
		optarg = argv[0];
		if (FUNC11(optarg) >= FUNC6(varnamearg)) {
			FUNC9("Variable %s is longer than %zu characters\n",
			    optarg, FUNC6(varnamearg));
			FUNC7();
			return (CMD_ERROR);
		}
		for (i = 0; i < FUNC11(optarg); i++)
			varnamearg[i] = optarg[i];
		varnamearg[i] = 0;
		optarg = argv[1];
		if (FUNC1(optarg, &matchguid) == false) {
			FUNC9("uuid %s could not be parsed\n", optarg);
			FUNC7();
			return (CMD_ERROR);
		}
		rv = FUNC2(varnamearg, &matchguid, lflag);
		if (rv == CMD_WARN)
			rv = CMD_OK;
		FUNC7();
		return (rv);
	}

	if (argc > 0) {
		FUNC9("Too many args: %d\n", argc);
		FUNC7();
		return (CMD_ERROR);
	}

	/*
	 * Initiate the search -- note the standard takes pain
	 * to specify the initial call must be a poiner to a NULL
	 * character.
	 */
	varalloc = 1024;
	varname = FUNC5(varalloc);
	if (varname == NULL) {
		FUNC9("Can't allocate memory to get variables\n");
		FUNC7();
		return (CMD_ERROR);
	}
	varname[0] = 0;
	while (1) {
		varsz = varalloc;
		status = RS->GetNextVariableName(&varsz, varname, &varguid);
		if (status == EFI_BUFFER_TOO_SMALL) {
			varalloc = varsz;
			newnm = FUNC10(varname, varalloc);
			if (newnm == NULL) {
				FUNC9("Can't allocate memory to get "
				    "variables\n");
				rv = CMD_ERROR;
				break;
			}
			varname = newnm;
			continue; /* Try again with bigger buffer */
		}
		if (status == EFI_NOT_FOUND) {
			rv = CMD_OK;
			break;
		}
		if (status != EFI_SUCCESS) {
			rv = CMD_ERROR;
			break;
		}

		if (aflag) {
			rv = FUNC2(varname, &varguid, lflag);
			if (rv != CMD_OK) {
				if (rv == CMD_WARN)
					rv = CMD_OK;
				break;
			}
			continue;
		}
		if (vflag) {
			if (FUNC14(varnamearg, varname) == 0) {
				rv = FUNC2(varname, &varguid, lflag);
				if (rv != CMD_OK) {
					if (rv == CMD_WARN)
						rv = CMD_OK;
					break;
				}
				continue;
			}
		}
		if (gflag) {
			rv = FUNC13((uuid_t *)&varguid,
			    (uuid_t *)&matchguid, NULL);
			if (rv != 0) {
				rv = FUNC2(varname, &varguid, lflag);
				if (rv != CMD_OK) {
					if (rv == CMD_WARN)
						rv = CMD_OK;
					break;
				}
				continue;
			}
		}
	}
	FUNC3(varname);
	FUNC7();

	return (rv);
}