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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum IvrsType { ____Placeholder_IvrsType } IvrsType ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  IVRS_TYPE_HARDWARE_EFR 130 
#define  IVRS_TYPE_HARDWARE_LEGACY 129 
#define  IVRS_TYPE_HARDWARE_MIXED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void
FUNC2(device_t dev, enum IvrsType ivhd_type, uint32_t feature) 
{
	switch (ivhd_type) {
	case IVRS_TYPE_HARDWARE_LEGACY:
		FUNC1(dev, "Features(type:0x%x) HATS = %d GATS = %d"
			" MsiNumPPR = %d PNBanks= %d PNCounters= %d\n",
			ivhd_type,
			FUNC0(feature, 31, 30),
			FUNC0(feature, 29, 28),
			FUNC0(feature, 27, 23),
			FUNC0(feature, 22, 17),
			FUNC0(feature, 16, 13));
		FUNC1(dev, "max PASID = %d GLXSup = %d Feature:%b\n",
			FUNC0(feature, 12, 8),
			FUNC0(feature, 4, 3),
			feature,
			"\020"
			"\002NXSup"
			"\003GTSup"
			"\004<b4>"
			"\005IASup"
			"\006GASup"
			"\007HESup");
		break;

	/* Fewer features or attributes are reported in non-legacy type. */
	case IVRS_TYPE_HARDWARE_EFR:
	case IVRS_TYPE_HARDWARE_MIXED:
		FUNC1(dev, "Features(type:0x%x) MsiNumPPR = %d"
			" PNBanks= %d PNCounters= %d\n",
			ivhd_type,
			FUNC0(feature, 27, 23),
			FUNC0(feature, 22, 17),
			FUNC0(feature, 16, 13));
		break;

	default: /* Other ivhd type features are not decoded. */
		FUNC1(dev, "Can't decode ivhd type :0x%x\n", ivhd_type);
	}
}