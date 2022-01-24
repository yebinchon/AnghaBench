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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IB_DEST_DRPATH ; 
 int /*<<< orphan*/  IB_DEST_GUID ; 
 int /*<<< orphan*/  IB_DEST_LID ; 
 long INT_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC3 () ; 
 char* FUNC4 (char*) ; 
 char* ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  ibd_dest_type ; 
 int /*<<< orphan*/  ibd_mkey ; 
 int /*<<< orphan*/ * ibd_sm_id ; 
 int ibd_timeout ; 
 int /*<<< orphan*/  ibdebug ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ibverbose ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* prog_name ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int show_keys ; 
 int /*<<< orphan*/  sm_portid ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC10 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(int ch, char *optarg)
{
	char *endp;
	long val;

	switch (ch) {
	case 'z':
		FUNC8(optarg);
		break;
	case 'h':
		FUNC5();
		break;
	case 'V':
		FUNC2(stderr, "%s %s\n", prog_name, FUNC3());
		FUNC1(0);
	case 'e':
		FUNC7(1);
		break;
	case 'v':
		ibverbose++;
		break;
	case 'd':
		ibdebug++;
		FUNC7(1);
		FUNC13(ibdebug - 1);
		break;
	case 'C':
		ibd_ca = optarg;
		break;
	case 'P':
		ibd_ca_port = FUNC11(optarg, 0, 0);
		if (ibd_ca_port < 0)
			FUNC0("cannot resolve CA port %d", ibd_ca_port);
		break;
	case 'D':
		ibd_dest_type = IB_DEST_DRPATH;
		break;
	case 'L':
		ibd_dest_type = IB_DEST_LID;
		break;
	case 'G':
		ibd_dest_type = IB_DEST_GUID;
		break;
	case 't':
		errno = 0;
		val = FUNC10(optarg, &endp, 0);
		if (errno || (endp && *endp != '\0') || val <= 0 ||
		    val > INT_MAX)
			FUNC0("Invalid timeout \"%s\".  Timeout requires a "
				"positive integer value < %d.", optarg, INT_MAX);
		else {
			FUNC6((int)val);
			ibd_timeout = (int)val;
		}
		break;
	case 's':
		/* srcport is not required when resolving via IB_DEST_LID */
		if (FUNC9(ibd_ca, ibd_ca_port, &sm_portid, optarg,
				IB_DEST_LID, 0, NULL) < 0)
			FUNC0("cannot resolve SM destination port %s",
				optarg);
		ibd_sm_id = &sm_portid;
		break;
	case 'K':
		show_keys = 1;
		break;
	case 'y':
		errno = 0;
		ibd_mkey = FUNC12(optarg, &endp, 0);
		if (errno || *endp != '\0') {
			errno = 0;
			ibd_mkey = FUNC12(FUNC4("M_Key: "), &endp, 0);
			if (errno || *endp != '\0') {
				FUNC0("Bad M_Key");
			}
                }
                break;
	default:
		return -1;
	}

	return 0;
}