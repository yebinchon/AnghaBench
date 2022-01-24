#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ibdiag_opt {char* member_0; float member_1; int member_2; char* member_3; char* member_4; } ;
struct TYPE_9__ {scalar_t__ lid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ib_portid_t ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IB_DEST_DRPATH ; 
 int IB_SA_CLASS ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumplevel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 scalar_t__ ibd_dest_type ; 
 int /*<<< orphan*/  ibd_mkey ; 
 int /*<<< orphan*/  ibd_sm_id ; 
 scalar_t__ ibd_timeout ; 
 int /*<<< orphan*/  FUNC8 (int,char**,int /*<<< orphan*/ *,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int mlid ; 
 int /*<<< orphan*/  multicast ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  node_name_map_file ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  process_opt ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  target_portguid ; 
 scalar_t__ timeout ; 

int FUNC17(int argc, char **argv)
{
	int mgmt_classes[3] =
	    { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS, IB_SA_CLASS };
	ib_portid_t my_portid = { 0 };
	ib_portid_t src_portid = { 0 };
	ib_portid_t dest_portid = { 0 };
	Node *endnode;

	const struct ibdiag_opt opts[] = {
		{"force", 'f', 0, NULL, "force"},
		{"no_info", 'n', 0, NULL, "simple format"},
		{"mlid", 'm', 1, "<mlid>", "multicast trace of the mlid"},
		{"node-name-map", 1, 1, "<file>", "node name map file"},
		{0}
	};
	char usage_args[] = "<src-addr> <dest-addr>";
	const char *usage_examples[] = {
		"- Unicast examples:",
		"4 16\t\t\t# show path between lids 4 and 16",
		"-n 4 16\t\t# same, but using simple output format",
		"-G 0x8f1040396522d 0x002c9000100d051\t# use guid addresses",

		" - Multicast examples:",
		"-m 0xc000 4 16\t# show multicast path of mlid 0xc000 between lids 4 and 16",
		NULL,
	};

	FUNC8(argc, argv, NULL, "DK", opts, process_opt,
			    usage_args, usage_examples);

	f = stdout;
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC9();

	if (ibd_timeout)
		timeout = ibd_timeout;

	srcport = FUNC11(ibd_ca, ibd_ca_port, mgmt_classes, 3);
	if (!srcport)
		FUNC0("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

	FUNC16(srcport, ibd_mkey);

	node_name_map = FUNC12(node_name_map_file);

	if (FUNC15(ibd_ca, ibd_ca_port, &src_portid, argv[0],
			       ibd_dest_type, ibd_sm_id, srcport) < 0)
		FUNC0("can't resolve source port %s", argv[0]);

	if (FUNC15(ibd_ca, ibd_ca_port, &dest_portid, argv[1],
			       ibd_dest_type, ibd_sm_id, srcport) < 0)
		FUNC0("can't resolve destination port %s", argv[1]);

	if (ibd_dest_type == IB_DEST_DRPATH) {
		if (FUNC14(&src_portid, NULL) < 0)
			FUNC0("cannot resolve lid for port \'%s\'",
				FUNC13(&src_portid));
		if (FUNC14(&dest_portid, NULL) < 0)
			FUNC0("cannot resolve lid for port \'%s\'",
				FUNC13(&dest_portid));
	}

	if (dest_portid.lid == 0 || src_portid.lid == 0) {
		FUNC1("bad src/dest lid");
		FUNC9();
	}

	if (ibd_dest_type != IB_DEST_DRPATH) {
		/* first find a direct path to the src port */
		if (FUNC6(&my_portid, &src_portid, 0) < 0)
			FUNC0("can't find a route to the src port");

		src_portid = my_portid;
	}

	if (!multicast) {
		if (FUNC6(&src_portid, &dest_portid, dumplevel) < 0)
			FUNC0("can't find a route from src to dest");
		FUNC4(0);
	} else {
		if (mlid < 0xc000)
			FUNC1("invalid MLID; must be 0xc000 or larger");
	}

	if (!(target_portguid = FUNC7(&dest_portid)))
		FUNC0("can't reach target lid %d", dest_portid.lid);

	if (!(endnode = FUNC5(&src_portid, mlid)))
		FUNC0("can't find a multicast route from src to dest");

	/* dump multicast path */
	FUNC3(endnode, dumplevel);

	FUNC2(node_name_map);

	FUNC10(srcport);

	FUNC4(0);
}