#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct aac_supplement_adapter_info {char* AdapterTypeText; } ;
struct TYPE_4__ {char* major; int /*<<< orphan*/  dash; int /*<<< orphan*/  minor; } ;
struct TYPE_5__ {TYPE_1__ comp; } ;
struct TYPE_6__ {int /*<<< orphan*/  buildNumber; TYPE_2__ external; } ;
struct aac_softc {int supported_options; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_dev; TYPE_3__ aac_revision; } ;
struct aac_fib {scalar_t__* data; } ;
struct aac_adapter_info {int TotalMem; int BufferMem; int ExecutionMem; int SerialNumber; TYPE_3__ KernelRevision; int /*<<< orphan*/  batteryPlatform; int /*<<< orphan*/  ClockSpeed; int /*<<< orphan*/  CpuVariant; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_DRIVER_BUGFIX_LEVEL ; 
 int /*<<< orphan*/  AAC_DRIVER_BUILD ; 
 int /*<<< orphan*/  AAC_DRIVER_MAJOR_VERSION ; 
 int /*<<< orphan*/  AAC_DRIVER_MINOR_VERSION ; 
 int AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  RequestAdapterInfo ; 
 int /*<<< orphan*/  RequestSupplementAdapterInfo ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_fib**) ; 
 int /*<<< orphan*/  aac_battery_platform ; 
 int /*<<< orphan*/  aac_cpu_variant ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*) ; 
 scalar_t__ FUNC3 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct aac_softc *sc)
{
	struct aac_fib *fib;
	struct aac_adapter_info	*info;
	char *adapter_type = "Adaptec RAID controller";

	FUNC5(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	FUNC6(&sc->aac_io_lock);
	FUNC0(sc, &fib);

	fib->data[0] = 0;
	if (FUNC3(sc, RequestAdapterInfo, 0, fib, 1)) {
		FUNC4(sc->aac_dev, "RequestAdapterInfo failed\n");
		FUNC2(sc);
		FUNC7(&sc->aac_io_lock);
		return;
	}

	/* save the kernel revision structure for later use */
	info = (struct aac_adapter_info *)&fib->data[0];
	sc->aac_revision = info->KernelRevision;

	if (bootverbose) {
		FUNC4(sc->aac_dev, "%s %dMHz, %dMB memory "
		    "(%dMB cache, %dMB execution), %s\n",
		    FUNC1(aac_cpu_variant, info->CpuVariant),
		    info->ClockSpeed, info->TotalMem / (1024 * 1024),
		    info->BufferMem / (1024 * 1024),
		    info->ExecutionMem / (1024 * 1024),
		    FUNC1(aac_battery_platform,
		    info->batteryPlatform));

		FUNC4(sc->aac_dev,
		    "Kernel %d.%d-%d, Build %d, S/N %6X\n",
		    info->KernelRevision.external.comp.major,
		    info->KernelRevision.external.comp.minor,
		    info->KernelRevision.external.comp.dash,
		    info->KernelRevision.buildNumber,
		    (u_int32_t)(info->SerialNumber & 0xffffff));

		FUNC4(sc->aac_dev, "Supported Options=%b\n",
			      sc->supported_options,
			      "\20"
			      "\1SNAPSHOT"
			      "\2CLUSTERS"
			      "\3WCACHE"
			      "\4DATA64"
			      "\5HOSTTIME"
			      "\6RAID50"
			      "\7WINDOW4GB"
			      "\10SCSIUPGD"
			      "\11SOFTERR"
			      "\12NORECOND"
			      "\13SGMAP64"
			      "\14ALARM"
			      "\15NONDASD"
			      "\16SCSIMGT"
			      "\17RAIDSCSI"
			      "\21ADPTINFO"
			      "\22NEWCOMM"
			      "\23ARRAY64BIT"
			      "\24HEATSENSOR");
	}

	if (sc->supported_options & AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO) {
		fib->data[0] = 0;
		if (FUNC3(sc, RequestSupplementAdapterInfo, 0, fib, 1))
			FUNC4(sc->aac_dev,
			    "RequestSupplementAdapterInfo failed\n");
		else
			adapter_type = ((struct aac_supplement_adapter_info *)
			    &fib->data[0])->AdapterTypeText;
	}
	FUNC4(sc->aac_dev, "%s, aac driver %d.%d.%d-%d\n",
		adapter_type,
		AAC_DRIVER_MAJOR_VERSION, AAC_DRIVER_MINOR_VERSION,
		AAC_DRIVER_BUGFIX_LEVEL, AAC_DRIVER_BUILD);

	FUNC2(sc);
	FUNC7(&sc->aac_io_lock);
}