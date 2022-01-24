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
struct ibdiag_opt {char* member_0; float member_1; int member_2; char* member_3; char* member_4; } ;
typedef  int /*<<< orphan*/  ibnd_fabric_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ cache_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ diff_cache_file ; 
 int /*<<< orphan*/  dump_ports_report ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  group ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  ibd_ibnetdisc_flags ; 
 int /*<<< orphan*/  ibd_mkey ; 
 scalar_t__ ibd_timeout ; 
 int /*<<< orphan*/  FUNC6 (int,char**,struct ibnd_config*,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ibnd_config*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ list ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ load_cache_file ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  node_name_map_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 scalar_t__ ports_report ; 
 int /*<<< orphan*/  process_opt ; 
 int /*<<< orphan*/  stdout ; 

int FUNC14(int argc, char **argv)
{
	struct ibnd_config config = { 0 };
	ibnd_fabric_t *fabric = NULL;
	ibnd_fabric_t *diff_fabric = NULL;

	const struct ibdiag_opt opts[] = {
		{"full", 'f', 0, NULL, "show full information (ports' speed and width, vlcap)"},
		{"show", 's', 0, NULL, "show more information"},
		{"list", 'l', 0, NULL, "list of connected nodes"},
		{"grouping", 'g', 0, NULL, "show grouping"},
		{"Hca_list", 'H', 0, NULL, "list of connected CAs"},
		{"Switch_list", 'S', 0, NULL, "list of connected switches"},
		{"Router_list", 'R', 0, NULL, "list of connected routers"},
		{"node-name-map", 1, 1, "<file>", "node name map file"},
		{"cache", 2, 1, "<file>",
		 "filename to cache ibnetdiscover data to"},
		{"load-cache", 3, 1, "<file>",
		 "filename of ibnetdiscover cache to load"},
		{"diff", 4, 1, "<file>",
		 "filename of ibnetdiscover cache to diff"},
		{"diffcheck", 5, 1, "<key(s)>",
		 "specify checks to execute for --diff"},
		{"ports", 'p', 0, NULL, "obtain a ports report"},
		{"max_hops", 'm', 0, NULL,
		 "report max hops discovered by the library"},
		{"outstanding_smps", 'o', 1, NULL,
		 "specify the number of outstanding SMP's which should be "
		 "issued during the scan"},
		{0}
	};
	char usage_args[] = "[topology-file]";

	FUNC6(argc, argv, &config, "DGKLs", opts, process_opt,
			    usage_args, NULL);

	f = stdout;

	argc -= optind;
	argv += optind;

	if (ibd_timeout)
		config.timeout_ms = ibd_timeout;

	config.flags = ibd_ibnetdisc_flags;

	if (argc && !(f = FUNC5(argv[0], "w")))
		FUNC0("can't open file %s for writing", argv[0]);

	config.mkey = ibd_mkey;

	node_name_map = FUNC13(node_name_map_file);

	if (diff_cache_file &&
	    !(diff_fabric = FUNC11(diff_cache_file, 0)))
		FUNC0("loading cached fabric for diff failed\n");

	if (load_cache_file) {
		if ((fabric = FUNC11(load_cache_file, 0)) == NULL)
			FUNC0("loading cached fabric failed\n");
	} else {
		if ((fabric =
		     FUNC9(ibd_ca, ibd_ca_port, NULL, &config)) == NULL)
			FUNC0("discover failed\n");
	}

	if (ports_report)
		FUNC10(fabric, dump_ports_report, NULL);
	else if (list)
		FUNC12(fabric, list);
	else if (diff_fabric)
		FUNC2(diff_fabric, fabric);
	else
		FUNC3(group, fabric);

	if (cache_file)
		if (FUNC7(fabric, cache_file, 0) < 0)
			FUNC0("caching ibnetdiscover data failed\n");

	FUNC8(fabric);
	if (diff_fabric)
		FUNC8(diff_fabric);
	FUNC1(node_name_map);
	FUNC4(0);
}