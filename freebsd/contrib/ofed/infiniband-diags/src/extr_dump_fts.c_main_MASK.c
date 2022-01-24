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
struct ibnd_config {int /*<<< orphan*/  mkey; int /*<<< orphan*/  flags; scalar_t__ timeout_ms; int /*<<< orphan*/  member_0; } ;
struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
typedef  int /*<<< orphan*/  ibnd_fabric_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NODE_SWITCH ; 
 int IB_SA_CLASS ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* endlid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* ibd_ca ; 
 int ibd_ca_port ; 
 int /*<<< orphan*/  ibd_ibnetdisc_flags ; 
 int /*<<< orphan*/  ibd_mkey ; 
 scalar_t__ ibd_timeout ; 
 int /*<<< orphan*/  FUNC3 (int,char**,struct ibnd_config*,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *,struct ibnd_config*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  node_name_map_file ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  process_opt ; 
 int /*<<< orphan*/  process_switch ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 
 void* startlid ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(int argc, char **argv)
{
	int rc = 0;
	int mgmt_classes[3] =
	    { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS, IB_SA_CLASS };

	struct ibnd_config config = { 0 };
	ibnd_fabric_t *fabric = NULL;

	const struct ibdiag_opt opts[] = {
		{"all", 'a', 0, NULL, "show all lids, even invalid entries"},
		{"no_dests", 'n', 0, NULL,
		 "do not try to resolve destinations"},
		{"Multicast", 'M', 0, NULL, "show multicast forwarding tables"},
		{"node-name-map", 1, 1, "<file>", "node name map file"},
		{0}
	};
	char usage_args[] = "[<dest dr_path|lid|guid> [<startlid> [<endlid>]]]";
	const char *usage_examples[] = {
		" -- Unicast examples:",
		"-a\t# same, but dump all lids, even with invalid out ports",
		"-n\t# simple dump format - no destination resolving",
		"10\t# dump lids starting from 10",
		"0x10 0x20\t# dump lid range",
		" -- Multicast examples:",
		"-M\t# dump all non empty mlids of switch with lid 4",
		"-M 0xc010 0xc020\t# same, but with range",
		"-M -n\t# simple dump format",
		NULL,
	};

	FUNC3(argc, argv, &config, "KGDLs", opts, process_opt,
			    usage_args, usage_examples);

	argc -= optind;
	argv += optind;

	if (argc > 0)
		startlid = FUNC12(argv[0], 0, 0);
	if (argc > 1)
		endlid = FUNC12(argv[1], 0, 0);

	node_name_map = FUNC10(node_name_map_file);

	if (ibd_timeout)
		config.timeout_ms = ibd_timeout;

	config.flags = ibd_ibnetdisc_flags;
	config.mkey = ibd_mkey;

	if ((fabric = FUNC5(ibd_ca, ibd_ca_port, NULL,
						&config)) != NULL) {

		srcport = FUNC8(ibd_ca, ibd_ca_port, mgmt_classes, 3);
		if (!srcport) {
			FUNC2(stderr,
				"Failed to open '%s' port '%d'\n", ibd_ca, ibd_ca_port);
			rc = -1;
			goto Exit;
		}
		FUNC11(srcport, ibd_mkey);

		if (ibd_timeout) {
			FUNC9(srcport, ibd_timeout);
		}

		FUNC6(fabric, process_switch, IB_NODE_SWITCH, fabric);

		FUNC7(srcport);

	} else {
		FUNC2(stderr, "Failed to discover fabric\n");
		rc = -1;
	}
Exit:
	FUNC4(fabric);

	FUNC0(node_name_map);
	FUNC1(rc);
}