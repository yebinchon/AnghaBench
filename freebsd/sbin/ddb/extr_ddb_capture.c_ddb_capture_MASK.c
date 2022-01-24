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
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  namelist ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(int argc, char *argv[])
{
	char *mflag, *nflag, errbuf[_POSIX2_LINE_MAX];
	kvm_t *kvm;
	int ch;

	mflag = NULL;
	nflag = NULL;
	kvm = NULL;
	while ((ch = FUNC5(argc, argv, "M:N:")) != -1) {
		switch (ch) {
		case 'M':
			mflag = optarg;
			break;

		case 'N':
			nflag = optarg;
			break;

		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1)
		FUNC9();

	if (mflag != NULL) {
		kvm = FUNC7(nflag, mflag, NULL, O_RDONLY, errbuf);
		if (kvm == NULL)
			FUNC4(-1, "ddb_capture: kvm_openfiles: %s", errbuf);
		if (FUNC6(kvm, namelist) != 0)
			FUNC4(-1, "ddb_capture: kvm_nlist");
	} else if (nflag != NULL)
		FUNC9();
	if (FUNC8(argv[0], "print") == 0) {
		if (kvm != NULL)
			FUNC0(kvm);
		else
			FUNC1();
	} else if (FUNC8(argv[0], "status") == 0) {
		if (kvm != NULL)
			FUNC2(kvm);
		else
			FUNC3();
	} else
		FUNC9();
}