#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usage_args ;
typedef  scalar_t__ uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  lid; } ;
struct sa_handle {TYPE_1__ dport; } ;
struct query_params {int reversible; int numb_path; int qos_class; int sl; int proxy_join; int /*<<< orphan*/  cpi; void* dlid; void* slid; int /*<<< orphan*/  sa_dgid; scalar_t__ with_grh; scalar_t__ hop_limit; } ;
struct query_cmd {char* name; char* alias; char* usage; scalar_t__ query_type; int (* handler ) (struct query_cmd const*,struct sa_handle*,struct query_params*,int,char**) ;} ;
struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ibmad_gid_t ;
struct TYPE_11__ {int /*<<< orphan*/  lid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ib_portid_t ;

/* Variables and functions */
 scalar_t__ CLASS_PORT_INFO ; 
 int /*<<< orphan*/  DEFAULT_SA_TIMEOUT_MS ; 
 int EINVAL ; 
 scalar_t__ GUID_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IB_SA_ATTR_NODERECORD ; 
 scalar_t__ IB_SA_ATTR_SWITCHINFORECORD ; 
 scalar_t__ LID_ONLY ; 
 scalar_t__ NAME_OF_GUID ; 
 scalar_t__ NAME_OF_LID ; 
#define  SAQUERY_CMD_CLASS_PORT_INFO 132 
#define  SAQUERY_CMD_ISSM 131 
#define  SAQUERY_CMD_MCGROUPS 130 
#define  SAQUERY_CMD_MCMEMBERS 129 
#define  SAQUERY_CMD_NODE_RECORD 128 
 int SAQUERY_CMD_QUERY ; 
 scalar_t__ UNIQUE_LID_ONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int command ; 
 scalar_t__* dst_lid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct query_cmd* FUNC5 (char*) ; 
 struct query_cmd* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 void* FUNC9 (struct sa_handle*,scalar_t__*) ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  ibd_timeout ; 
 int /*<<< orphan*/  FUNC10 (int,char**,struct query_params*,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct query_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  node_name_map_file ; 
 scalar_t__ node_print_desc ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int FUNC17 (struct sa_handle*,struct query_params*) ; 
 int FUNC18 (struct sa_handle*,struct query_params*) ; 
 int FUNC19 (struct sa_handle*,struct query_params*) ; 
 int FUNC20 (struct sa_handle*,struct query_params*) ; 
 int /*<<< orphan*/  process_opt ; 
 struct query_cmd* query_cmds ; 
 int FUNC21 (struct sa_handle*,struct query_params*) ; 
 scalar_t__ query_type ; 
 scalar_t__ requested_guid ; 
 int /*<<< orphan*/  requested_guid_flag ; 
 scalar_t__ requested_lid ; 
 int /*<<< orphan*/  requested_lid_flag ; 
 char* requested_name ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sa_handle*) ; 
 struct sa_handle* FUNC24 () ; 
 int FUNC25 (struct sa_handle*,int,TYPE_2__*) ; 
 int FUNC26 (struct sa_handle*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*,int,char*,...) ; 
 int FUNC28 (char*,char*) ; 
 scalar_t__* src_lid ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC29 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct query_cmd const*,struct sa_handle*,struct query_params*,int,char**) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 scalar_t__ FUNC32 () ; 

int FUNC33(int argc, char **argv)
{
	ib_portid_t portid = { 0 };
	int port = 0;
	int sa_cpi_required = 0;
	char usage_args[1024];
	struct sa_handle * h;
	struct query_params params;
	const struct query_cmd *q;
	int status;
	int n;

	const struct ibdiag_opt opts[] = {
		{"p", 'p', 0, NULL, "get PathRecord info"},
		{"N", 'N', 0, NULL, "get NodeRecord info"},
		{"L", 'L', 0, NULL, "return the Lids of the name specified"},
		{"l", 'l', 0, NULL,
		 "return the unique Lid of the name specified"},
		{"G", 'G', 0, NULL, "return the Guids of the name specified"},
		{"O", 'O', 0, NULL, "return name for the Lid specified"},
		{"U", 'U', 0, NULL, "return name for the Guid specified"},
		{"s", 's', 0, NULL, "return the PortInfoRecords with isSM or"
		 " isSMdisabled capability mask bit on"},
		{"g", 'g', 0, NULL, "get multicast group info"},
		{"m", 'm', 0, NULL, "get multicast member info (if multicast"
		 " group specified, list member GIDs only for group specified,"
		 " for example 'saquery -m 0xC000')"},
		{"x", 'x', 0, NULL, "get LinkRecord info"},
		{"c", 'c', 0, NULL, "get the SA's class port info"},
		{"S", 'S', 0, NULL, "get ServiceRecord info"},
		{"I", 'I', 0, NULL, "get InformInfoRecord (subscription) info"},
		{"list", 'D', 0, NULL, "the node desc of the CA's"},
		{"with-grh", 23, 0, NULL, "add GRH to path record query"},
		{"sa-dgid", 24, 1, "<gid>",
		 "Set destination GID (in IPv6 format) in the GRH"},
		{"src-to-dst", 1, 1, "<src:dst>", "get a PathRecord for"
		 " <src:dst> where src and dst are either node names or LIDs"},
		{"sgid-to-dgid", 2, 1, "<sgid-dgid>", "get a PathRecord for"
		 " <sgid-dgid> where sgid and dgid are addresses in IPv6 format"},
		{"node-name-map", 3, 1, "<file>",
		 "specify a node name map file"},
		{"smkey", 4, 1, "<val>",
		 "SA SM_Key value for the query."
		 " If non-numeric value (like 'x') is specified then"
		 " saquery will prompt for a value. "
		 " Default (when not specified here or in ibdiag.conf) is to "
		 " use SM_Key == 0 (or \"untrusted\")"},
		{"slid", 5, 1, "<lid>", "Source LID (PathRecord)"},
		{"dlid", 6, 1, "<lid>", "Destination LID (PathRecord)"},
		{"mlid", 7, 1, "<lid>", "Multicast LID (MCMemberRecord)"},
		{"sgid", 14, 1, "<gid>",
		 "Source GID (IPv6 format) (PathRecord)"},
		{"dgid", 15, 1, "<gid>",
		 "Destination GID (IPv6 format) (PathRecord)"},
		{"gid", 16, 1, "<gid>", "Port GID (MCMemberRecord)"},
		{"mgid", 17, 1, "<gid>", "Multicast GID (MCMemberRecord)"},
		{"reversible", 'r', 1, NULL, "Reversible path (PathRecord)"},
		{"numb_path", 'n', 1, NULL, "Number of paths (PathRecord)"},
		{"pkey", 18, 1, NULL, "P_Key (PathRecord, MCMemberRecord)."
		 " If non-numeric value (like 'x') is specified then"
		 " saquery will prompt for a value"},
		{"qos_class", 'Q', 1, NULL, "QoS Class (PathRecord)"},
		{"sl", 19, 1, NULL,
		 "Service level (PathRecord, MCMemberRecord)"},
		{"mtu", 'M', 1, NULL,
		 "MTU and selector (PathRecord, MCMemberRecord)"},
		{"rate", 'R', 1, NULL,
		 "Rate and selector (PathRecord, MCMemberRecord)"},
		{"pkt_lifetime", 20, 1, NULL,
		 "Packet lifetime and selector (PathRecord, MCMemberRecord)"},
		{"qkey", 'q', 1, NULL, "Q_Key (MCMemberRecord)."
		 " If non-numeric value (like 'x') is specified then"
		 " saquery will prompt for a value"},
		{"tclass", 'T', 1, NULL,
		 "Traffic Class (PathRecord, MCMemberRecord)"},
		{"flow_label", 'F', 1, NULL,
		 "Flow Label (PathRecord, MCMemberRecord)"},
		{"hop_limit", 'H', 1, NULL,
		 "Hop limit (PathRecord, MCMemberRecord)"},
		{"scope", 21, 1, NULL, "Scope (MCMemberRecord)"},
		{"join_state", 'J', 1, NULL, "Join state (MCMemberRecord)"},
		{"proxy_join", 'X', 1, NULL, "Proxy join (MCMemberRecord)"},
		{"service_id", 22, 1, NULL, "ServiceID (PathRecord)"},
		{0}
	};

	FUNC14(&params, 0, sizeof params);
	params.hop_limit = 0;
	params.reversible = -1;
	params.numb_path = -1;
	params.qos_class = -1;
	params.sl = -1;
	params.proxy_join = -1;

	n = FUNC28(usage_args, "[query-name] [<name> | <lid> | <guid>]\n"
		    "\nSupported query names (and aliases):\n");
	for (q = query_cmds; q->name; q++) {
		n += FUNC27(usage_args + n, sizeof(usage_args) - n,
			      "  %s (%s) %s\n", q->name,
			      q->alias ? q->alias : "",
			      q->usage ? q->usage : "");
		if (n >= sizeof(usage_args))
			FUNC4(-1);
	}
	FUNC27(usage_args + n, sizeof(usage_args) - n,
		 "\n  Queries node records by default.");

	q = NULL;
	ibd_timeout = DEFAULT_SA_TIMEOUT_MS;

	FUNC10(argc, argv, &params, "DGLsy", opts, process_opt,
			    usage_args, NULL);

	argc -= optind;
	argv += optind;

	if (!query_type && command == SAQUERY_CMD_QUERY) {
		if (!argc || !(q = FUNC5(argv[0])))
			query_type = IB_SA_ATTR_NODERECORD;
		else {
			query_type = q->query_type;
			argc--;
			argv++;
		}
	}

	if (argc) {
		if (node_print_desc == NAME_OF_LID) {
			requested_lid = (uint16_t) FUNC29(argv[0], NULL, 0);
			requested_lid_flag++;
		} else if (node_print_desc == NAME_OF_GUID) {
			requested_guid = FUNC29(argv[0], NULL, 0);
			requested_guid_flag++;
		} else
			requested_name = argv[0];
	}

	if ((node_print_desc == LID_ONLY ||
	     node_print_desc == UNIQUE_LID_ONLY ||
	     node_print_desc == GUID_ONLY) && !requested_name) {
		FUNC7(stderr, "ERROR: name not specified\n");
		FUNC11();
	}

	if (node_print_desc == NAME_OF_LID && !requested_lid_flag) {
		FUNC7(stderr, "ERROR: lid not specified\n");
		FUNC11();
	}

	if (node_print_desc == NAME_OF_GUID && !requested_guid_flag) {
		FUNC7(stderr, "ERROR: guid not specified\n");
		FUNC11();
	}

	/* Note: lid cannot be 0; see infiniband spec 4.1.3 */
	if (node_print_desc == NAME_OF_LID && !requested_lid) {
		FUNC7(stderr, "ERROR: lid invalid\n");
		FUNC11();
	}

	if (FUNC32())
		FUNC0("Failed to initialized umad library");
	h = FUNC24();
	if (!h)
		FUNC1("Failed to bind to the SA");

	if (params.with_grh) {
		ibmad_gid_t gid = { 0 };
		/*
		 * If GRH destination GID is not specified, try to get it by
		 * querying the SA.
		 */
		if (!FUNC12(&gid, &params.sa_dgid, sizeof(ibmad_gid_t))) {
			if ((status = FUNC22(ibd_ca, ibd_ca_port, &portid,
						   &port, 0)) < 0) {
				FUNC7(stderr, "can't resolve self port %s\n",
					argv[0]);
				goto error;
			}
			if ((status = FUNC26(h, &gid, portid.lid,
						  h->dport.lid)) > 0) {
				FUNC7(stderr,
					"Failed to query SA:PathRecord\n");
				goto error;
			}
		} else
			FUNC13(&gid, &params.sa_dgid, sizeof(ibmad_gid_t));

		if ((status = FUNC25(h, 1, &gid)) < 0) {
			FUNC7(stderr, "Failed to set GRH\n");
			goto error;
		}
	}

	node_name_map = FUNC16(node_name_map_file);

	if (src_lid && *src_lid)
		params.slid = FUNC9(h, src_lid);
	if (dst_lid && *dst_lid)
		params.dlid = FUNC9(h, dst_lid);

	if (command == SAQUERY_CMD_CLASS_PORT_INFO ||
	    query_type == CLASS_PORT_INFO ||
	    query_type == IB_SA_ATTR_SWITCHINFORECORD)
		sa_cpi_required = 1;

	if (sa_cpi_required && (status = FUNC21(h, &params)) != 0) {
		FUNC7(stderr, "Failed to query SA:ClassPortInfo\n");
		goto error;
	}

	switch (command) {
	case SAQUERY_CMD_NODE_RECORD:
		status = FUNC20(h, &params);
		break;
	case SAQUERY_CMD_CLASS_PORT_INFO:
		FUNC3(&params.cpi);
		status = 0;
		break;
	case SAQUERY_CMD_ISSM:
		status = FUNC17(h, &params);
		break;
	case SAQUERY_CMD_MCGROUPS:
		status = FUNC18(h, &params);
		break;
	case SAQUERY_CMD_MCMEMBERS:
		status = FUNC19(h, &params);
		break;
	default:
		if ((!q && !(q = FUNC6(query_type)))
		    || !q->handler) {
			FUNC7(stderr, "Unknown query type %d\n",
				FUNC15(query_type));
			status = EINVAL;
		} else
			status = q->handler(q, h, &params, argc, argv);
		break;
	}

error:
	if (src_lid)
		FUNC8(src_lid);
	FUNC23(h);
	FUNC31();
	FUNC2(node_name_map);
	return (status);
}