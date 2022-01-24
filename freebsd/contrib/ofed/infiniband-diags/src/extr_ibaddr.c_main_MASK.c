#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ibdiag_opt {char* member_0; char member_1; char* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IB_SA_CLASS ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  ibd_dest_type ; 
 int /*<<< orphan*/  ibd_mkey ; 
 int /*<<< orphan*/  ibd_sm_id ; 
 int /*<<< orphan*/  FUNC3 (int,char**,int /*<<< orphan*/ *,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  process_opt ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int show_gid ; 
 int show_lid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int argc, char **argv)
{
	int mgmt_classes[3] =
	    { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS, IB_SA_CLASS };
	ib_portid_t portid = { 0 };
	int port = 0;

	const struct ibdiag_opt opts[] = {
		{"gid_show", 'g', 0, NULL, "show gid address only"},
		{"lid_show", 'l', 0, NULL, "show lid range only"},
		{"Lid_show", 'L', 0, NULL, "show lid range (in decimal) only"},
		{0}
	};
	char usage_args[] = "[<lid|dr_path|guid>]";
	const char *usage_examples[] = {
		"\t\t# local port's address",
		"32\t\t# show lid range and gid of lid 32",
		"-G 0x8f1040023\t# same but using guid address",
		"-l 32\t\t# show lid range only",
		"-L 32\t\t# show decimal lid range only",
		"-g 32\t\t# show gid address only",
		NULL
	};

	FUNC3(argc, argv, NULL, "KL", opts, process_opt,
			    usage_args, usage_examples);

	argc -= optind;
	argv += optind;

	if (argc > 1)
		port = FUNC9(argv[1], 0, 0);

	if (!show_lid && !show_gid)
		show_lid = show_gid = 1;

	srcport = FUNC5(ibd_ca, ibd_ca_port, mgmt_classes, 3);
	if (!srcport)
		FUNC0("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

	FUNC8(srcport, ibd_mkey);

	if (argc) {
		if (FUNC6(ibd_ca, ibd_ca_port, &portid, argv[0],
				       ibd_dest_type, ibd_sm_id, srcport) < 0)
			FUNC0("can't resolve destination port %s", argv[0]);
	} else {
		if (FUNC7(ibd_ca, ibd_ca_port, &portid, &port, NULL) < 0)
			FUNC0("can't resolve self port %s", argv[0]);
	}

	if (FUNC2(&portid, port, show_lid, show_gid) < 0)
		FUNC0("can't resolve requested address");

	FUNC4(srcport);
	FUNC1(0);
}