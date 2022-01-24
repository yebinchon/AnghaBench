#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct ibnd_config {int /*<<< orphan*/  mkey; int /*<<< orphan*/  retries; int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  member_0; } ;
struct ibmad_port {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  total_smps; } ;
typedef  TYPE_2__ smp_engine_t ;
struct TYPE_21__ {scalar_t__ initial_hops; int /*<<< orphan*/  selfportid; struct ibnd_config* cfg; TYPE_5__* f_int; } ;
typedef  TYPE_3__ ibnd_scan_t ;
typedef  int /*<<< orphan*/  ibnd_fabric_t ;
struct TYPE_19__ {scalar_t__ cnt; } ;
struct TYPE_22__ {TYPE_1__ drpath; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ ib_portid_t ;
struct TYPE_18__ {int /*<<< orphan*/  maxhops_discovered; int /*<<< orphan*/  total_mads_used; } ;
struct TYPE_23__ {TYPE_14__ fabric; } ;
typedef  TYPE_5__ f_internal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_14__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ibmad_port*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmad_port*) ; 
 struct ibmad_port* FUNC8 (char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmad_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmad_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct ibnd_config*,struct ibnd_config*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,char*,int,TYPE_3__*,struct ibnd_config*) ; 
 int /*<<< orphan*/  FUNC18 (struct ibmad_port*,int /*<<< orphan*/ ) ; 

ibnd_fabric_t *FUNC19(char * ca_name, int ca_port,
				    ib_portid_t * from,
				    struct ibnd_config *cfg)
{
	struct ibnd_config config = { 0 };
	f_internal_t *f_int = NULL;
	ib_portid_t my_portid = { 0 };
	smp_engine_t engine;
	ibnd_scan_t scan;
	struct ibmad_port *ibmad_port;
	int nc = 2;
	int mc[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };

	/* If not specified start from "my" port */
	if (!from)
		from = &my_portid;

	if (FUNC15(&config, cfg)) {
		FUNC1("Invalid ibnd_config\n");
		return NULL;
	}

	f_int = FUNC2();
	if (!f_int) {
		FUNC1("OOM: failed to calloc ibnd_fabric_t\n");
		return NULL;
	}

	FUNC11(&scan.selfportid, 0, sizeof(scan.selfportid));
	scan.f_int = f_int;
	scan.cfg = &config;
	scan.initial_hops = from->drpath.cnt;

	ibmad_port = FUNC8(ca_name, ca_port, mc, nc);
	if (!ibmad_port) {
		FUNC1("can't open MAD port (%s:%d)\n", ca_name, ca_port);
		return (NULL);
	}
	FUNC10(ibmad_port, cfg->timeout_ms);
	FUNC9(ibmad_port, cfg->retries);
	FUNC18(ibmad_port, cfg->mkey);

	if (FUNC5(&scan.selfportid,
				NULL, NULL, ibmad_port) < 0) {
		FUNC1("Failed to resolve self\n");
		FUNC7(ibmad_port);
		return NULL;
	}
	FUNC7(ibmad_port);

	if (FUNC17(&engine, ca_name, ca_port, &scan, &config)) {
		FUNC3(f_int);
		return (NULL);
	}

	FUNC0("from %s\n", FUNC12(from));

	if (!FUNC14(&engine, from, NULL))
		if (FUNC13(&engine) != 0)
			goto error;

	f_int->fabric.total_mads_used = engine.total_smps;
	f_int->fabric.maxhops_discovered += scan.initial_hops;

	if (FUNC4(&f_int->fabric))
		goto error;

	FUNC16(&engine);
	return (ibnd_fabric_t *)f_int;
error:
	FUNC16(&engine);
	FUNC6(&f_int->fabric);
	return NULL;
}