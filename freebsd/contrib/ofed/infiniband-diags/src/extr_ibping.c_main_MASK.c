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
typedef  unsigned long long uint64_t ;
struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
struct TYPE_5__ {int grh_present; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ IB_DEST_LID ; 
 int IB_SA_CLASS ; 
 int IB_VENDOR_OPENIB_PING_CLASS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  count ; 
 int /*<<< orphan*/  dgid ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  flood ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  host_and_domain ; 
 int /*<<< orphan*/  ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 scalar_t__ ibd_dest_type ; 
 int /*<<< orphan*/  ibd_sm_id ; 
 int /*<<< orphan*/  FUNC5 (int,char**,int /*<<< orphan*/ *,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long long FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  lost ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 unsigned long long maxrtt ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned long long minrtt ; 
 int /*<<< orphan*/  ntrans ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  oui ; 
 TYPE_1__ portid ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  process_opt ; 
 int /*<<< orphan*/  replied ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ server ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  total_rtt ; 
 scalar_t__ with_grh ; 

int FUNC19(int argc, char **argv)
{
	int mgmt_classes[1] = { IB_SA_CLASS };
	int ping_class = IB_VENDOR_OPENIB_PING_CLASS;
	uint64_t rtt;
	char *err;

	const struct ibdiag_opt opts[] = {
		{"count", 'c', 1, "<num>", "stop after count packets"},
		{"flood", 'f', 0, NULL, "flood destination"},
		{"oui", 'o', 1, NULL, "use specified OUI number"},
		{"Server", 'S', 0, NULL, "start in server mode"},
		{"dgid", 25, 1, NULL, "remote gid (IPv6 format)"},
		{0}
	};
	char usage_args[] = "<dest lid|guid>";

	FUNC5(argc, argv, NULL, "DKy", opts, process_opt,
			    usage_args, NULL);

	argc -= optind;
	argv += optind;

	if (!argc && !server)
		FUNC6();

	srcport = FUNC12(ibd_ca, ibd_ca_port, mgmt_classes, 1);
	if (!srcport)
		FUNC1("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

	if (server) {
		if (FUNC10(ping_class, 0, 0, oui, srcport) < 0)
			FUNC1("can't serve class %d on this port",
				ping_class);

		FUNC4(host_and_domain, sizeof host_and_domain);

		if ((err = FUNC8()))
			FUNC1("ibping to %s: %s", FUNC14(&portid), err);
		FUNC3(0);
	}

	if (FUNC9(ping_class, 0, srcport) < 0)
		FUNC1("can't register ping class %d on this port",
			ping_class);

	if (with_grh && ibd_dest_type != IB_DEST_LID)
		FUNC1("When using GRH, LID should be provided");
	if (FUNC16(ibd_ca, ibd_ca_port, &portid, argv[0],
			       ibd_dest_type, ibd_sm_id, srcport) < 0)
		FUNC1("can't resolve destination port %s", argv[0]);

	if (with_grh) {
		portid.grh_present = 1;
		FUNC13(&portid.gid, &dgid, sizeof(portid.gid));
	}

	FUNC17(SIGINT, report);
	FUNC17(SIGTERM, report);

	start = FUNC2();

	while (count-- > 0) {
		ntrans++;
		if ((rtt = FUNC7(&portid, flood)) == ~0ull) {
			FUNC0("ibping to %s failed", FUNC14(&portid));
			lost++;
		} else {
			if (rtt < minrtt)
				minrtt = rtt;
			if (rtt > maxrtt)
				maxrtt = rtt;
			total_rtt += rtt;
			replied++;
		}

		if (!flood)
			FUNC18(1);
	}

	FUNC15(0);

	FUNC11(srcport);

	FUNC3(-1);
}