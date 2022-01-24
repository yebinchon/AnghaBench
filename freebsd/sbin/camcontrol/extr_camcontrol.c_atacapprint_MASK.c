#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct TYPE_4__ {int extension; int command1; int command2; } ;
struct TYPE_3__ {int command2; int command1; int extension; } ;
struct ata_params {int config; int satacapabilities; char* model; char* revision; char* serial; int* wwn; char* product_id; char* media_serial; int cylinders; int heads; int sectors; int capabilities1; int mwdmamodes; int atavalid; int udmamodes; int media_rotation_rate; int support3; int satacapabilities2; int satasupport; int apm_value; int support2; int enabled2; int wrv_mode; int support_dsm; int max_dsm_blocks; int tcg; int multi; TYPE_2__ enabled; TYPE_1__ support; int /*<<< orphan*/  acoustic; int /*<<< orphan*/  queue; int /*<<< orphan*/  version_major; scalar_t__ lba_size48_4; scalar_t__ lba_size48_3; scalar_t__ lba_size48_2; scalar_t__ lba_size48_1; scalar_t__ lba_size_2; scalar_t__ lba_size_1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ATA_ENCRYPTS_ALL_USER_DATA ; 
 int ATA_FLAG_88 ; 
#define  ATA_PIO1 133 
#define  ATA_PIO2 132 
#define  ATA_PIO3 131 
#define  ATA_PIO4 130 
 int ATA_PROTO_ATAPI ; 
 int ATA_PROTO_CFA ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ATA_SATA_GEN1 ; 
 int ATA_SATA_GEN2 ; 
 int ATA_SATA_GEN3 ; 
 int ATA_SUPPORT_64BITWWN ; 
 int ATA_SUPPORT_ADDRESS48 ; 
 int ATA_SUPPORT_ANTIFREEZE_LOCK_EXT ; 
 int ATA_SUPPORT_APM ; 
 int ATA_SUPPORT_AUTOACOUSTIC ; 
 int ATA_SUPPORT_BLOCK_ERASE_EXT ; 
 int ATA_SUPPORT_CFA ; 
 int ATA_SUPPORT_CRYPTO_SCRAMBLE_EXT ; 
 int ATA_SUPPORT_DMA ; 
 int ATA_SUPPORT_DRAT ; 
 int ATA_SUPPORT_DSM_TRIM ; 
 int ATA_SUPPORT_DSN ; 
 int ATA_SUPPORT_EPC ; 
 int ATA_SUPPORT_FLUSHCACHE ; 
 int ATA_SUPPORT_FREEFALL ; 
 int ATA_SUPPORT_GENLOG ; 
 int ATA_SUPPORT_IORDY ; 
 int ATA_SUPPORT_LBA ; 
 int ATA_SUPPORT_LOOKAHEAD ; 
 int ATA_SUPPORT_MEDIASN ; 
 int ATA_SUPPORT_MICROCODE ; 
 int ATA_SUPPORT_NCQ ; 
 int ATA_SUPPORT_NCQ_AUTOSENSE ; 
 int ATA_SUPPORT_NCQ_NON_DATA ; 
 int ATA_SUPPORT_NCQ_PRIO ; 
 int ATA_SUPPORT_NCQ_STREAM ; 
 int ATA_SUPPORT_NOTIFY ; 
 int ATA_SUPPORT_OVERWRITE_EXT ; 
 int ATA_SUPPORT_POWERMGT ; 
 int ATA_SUPPORT_RCVSND_FPDMA_QUEUED ; 
 int ATA_SUPPORT_RZAT ; 
 int ATA_SUPPORT_SANITIZE ; 
 int ATA_SUPPORT_SANITIZE_ALLOWED ; 
 int ATA_SUPPORT_SECURITY ; 
 int ATA_SUPPORT_SENSE_REPORT ; 
 int ATA_SUPPORT_SMART ; 
 int ATA_SUPPORT_STANDBY ; 
 int ATA_SUPPORT_TCG ; 
 int ATA_SUPPORT_UNLOAD ; 
 int ATA_SUPPORT_WRITECACHE ; 
 int ATA_SUPPORT_WRITEREADVERIFY ; 
#define  ATA_SUPPORT_ZONE_DEV_MANAGED 129 
#define  ATA_SUPPORT_ZONE_HOST_AWARE 128 
 int ATA_SUPPORT_ZONE_MASK ; 
 scalar_t__ FUNC3 (struct ata_params*) ; 
 int FUNC4 (struct ata_params*) ; 
 int FUNC5 (struct ata_params*) ; 
 scalar_t__ FUNC6 (struct ata_params*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ata_params*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(struct ata_params *parm)
{
	const char *proto;
	u_int32_t lbasize = (u_int32_t)parm->lba_size_1 |
				((u_int32_t)parm->lba_size_2 << 16);

	u_int64_t lbasize48 = ((u_int64_t)parm->lba_size48_1) |
				((u_int64_t)parm->lba_size48_2 << 16) |
				((u_int64_t)parm->lba_size48_3 << 32) |
				((u_int64_t)parm->lba_size48_4 << 48);

	FUNC9("\n");
	FUNC9("protocol              ");
	proto = (parm->config == ATA_PROTO_CFA) ? "CFA" :
		(parm->config & ATA_PROTO_ATAPI) ? "ATAPI" : "ATA";
	if (FUNC7(parm->version_major) == 0) {
		FUNC9("%s", proto);
	} else if (FUNC7(parm->version_major) <= 7) {
		FUNC9("%s-%d", proto,
		    FUNC7(parm->version_major));
	} else if (FUNC7(parm->version_major) == 8) {
		FUNC9("%s8-ACS", proto);
	} else {
		FUNC9("ACS-%d %s",
		    FUNC7(parm->version_major) - 7, proto);
	}
	if (parm->satacapabilities && parm->satacapabilities != 0xffff) {
		if (parm->satacapabilities & ATA_SATA_GEN3)
			FUNC9(" SATA 3.x\n");
		else if (parm->satacapabilities & ATA_SATA_GEN2)
			FUNC9(" SATA 2.x\n");
		else if (parm->satacapabilities & ATA_SATA_GEN1)
			FUNC9(" SATA 1.x\n");
		else
			FUNC9(" SATA\n");
	}
	else
		FUNC9("\n");
	FUNC9("device model          %.40s\n", parm->model);
	FUNC9("firmware revision     %.8s\n", parm->revision);
	FUNC9("serial number         %.20s\n", parm->serial);
	if (parm->enabled.extension & ATA_SUPPORT_64BITWWN) {
		FUNC9("WWN                   %04x%04x%04x%04x\n",
		    parm->wwn[0], parm->wwn[1], parm->wwn[2], parm->wwn[3]);
	}
	FUNC9("additional product id %.8s\n", parm->product_id);
	if (parm->enabled.extension & ATA_SUPPORT_MEDIASN) {
		FUNC9("media serial number   %.30s\n",
		    parm->media_serial);
	}

	FUNC9("cylinders             %d\n", parm->cylinders);
	FUNC9("heads                 %d\n", parm->heads);
	FUNC9("sectors/track         %d\n", parm->sectors);
	FUNC9("sector size           logical %u, physical %lu, offset %lu\n",
	    FUNC4(parm),
	    (unsigned long)FUNC6(parm),
	    (unsigned long)FUNC3(parm));

	if (parm->config == ATA_PROTO_CFA ||
	    (parm->support.command2 & ATA_SUPPORT_CFA))
		FUNC9("CFA supported\n");

	FUNC9("LBA%ssupported         ",
		parm->capabilities1 & ATA_SUPPORT_LBA ? " " : " not ");
	if (lbasize)
		FUNC9("%d sectors\n", lbasize);
	else
		FUNC9("\n");

	FUNC9("LBA48%ssupported       ",
		parm->support.command2 & ATA_SUPPORT_ADDRESS48 ? " " : " not ");
	if (lbasize48)
		FUNC9("%ju sectors\n", (uintmax_t)lbasize48);
	else
		FUNC9("\n");

	FUNC9("PIO supported         PIO");
	switch (FUNC5(parm)) {
	case ATA_PIO4:
		FUNC9("4");
		break;
	case ATA_PIO3:
		FUNC9("3");
		break;
	case ATA_PIO2:
		FUNC9("2");
		break;
	case ATA_PIO1:
		FUNC9("1");
		break;
	default:
		FUNC9("0");
	}
	if ((parm->capabilities1 & ATA_SUPPORT_IORDY) == 0)
		FUNC9(" w/o IORDY");
	FUNC9("\n");

	FUNC9("DMA%ssupported         ",
		parm->capabilities1 & ATA_SUPPORT_DMA ? " " : " not ");
	if (parm->capabilities1 & ATA_SUPPORT_DMA) {
		if (parm->mwdmamodes & 0xff) {
			FUNC9("WDMA");
			if (parm->mwdmamodes & 0x04)
				FUNC9("2");
			else if (parm->mwdmamodes & 0x02)
				FUNC9("1");
			else if (parm->mwdmamodes & 0x01)
				FUNC9("0");
			FUNC9(" ");
		}
		if ((parm->atavalid & ATA_FLAG_88) &&
		    (parm->udmamodes & 0xff)) {
			FUNC9("UDMA");
			if (parm->udmamodes & 0x40)
				FUNC9("6");
			else if (parm->udmamodes & 0x20)
				FUNC9("5");
			else if (parm->udmamodes & 0x10)
				FUNC9("4");
			else if (parm->udmamodes & 0x08)
				FUNC9("3");
			else if (parm->udmamodes & 0x04)
				FUNC9("2");
			else if (parm->udmamodes & 0x02)
				FUNC9("1");
			else if (parm->udmamodes & 0x01)
				FUNC9("0");
			FUNC9(" ");
		}
	}
	FUNC9("\n");

	if (parm->media_rotation_rate == 1) {
		FUNC9("media RPM             non-rotating\n");
	} else if (parm->media_rotation_rate >= 0x0401 &&
	    parm->media_rotation_rate <= 0xFFFE) {
		FUNC9("media RPM             %d\n",
			parm->media_rotation_rate);
	}

	FUNC9("Zoned-Device Commands ");
	switch (parm->support3 & ATA_SUPPORT_ZONE_MASK) {
		case ATA_SUPPORT_ZONE_DEV_MANAGED:
			FUNC9("device managed\n");
			break;
		case ATA_SUPPORT_ZONE_HOST_AWARE:
			FUNC9("host aware\n");
			break;
		default:
			FUNC9("no\n");
	}

	FUNC9("\nFeature                      "
		"Support  Enabled   Value           Vendor\n");
	FUNC9("read ahead                     %s	%s\n",
		parm->support.command1 & ATA_SUPPORT_LOOKAHEAD ? "yes" : "no",
		parm->enabled.command1 & ATA_SUPPORT_LOOKAHEAD ? "yes" : "no");
	FUNC9("write cache                    %s	%s\n",
		parm->support.command1 & ATA_SUPPORT_WRITECACHE ? "yes" : "no",
		parm->enabled.command1 & ATA_SUPPORT_WRITECACHE ? "yes" : "no");
	FUNC9("flush cache                    %s	%s\n",
		parm->support.command2 & ATA_SUPPORT_FLUSHCACHE ? "yes" : "no",
		parm->enabled.command2 & ATA_SUPPORT_FLUSHCACHE ? "yes" : "no");
	FUNC9("Native Command Queuing (NCQ)   ");
	if (FUNC8(parm) && (parm->satacapabilities & ATA_SUPPORT_NCQ)) {
		FUNC9("yes		%d tags\n",
		    FUNC2(parm->queue) + 1);
		FUNC9("NCQ Priority Information       %s\n",
		    parm->satacapabilities & ATA_SUPPORT_NCQ_PRIO ?
		    "yes" : "no");
		FUNC9("NCQ Non-Data Command           %s\n",
		    parm->satacapabilities2 & ATA_SUPPORT_NCQ_NON_DATA ?
		    "yes" : "no");
		FUNC9("NCQ Streaming                  %s\n",
		    parm->satacapabilities2 & ATA_SUPPORT_NCQ_STREAM ?
		    "yes" : "no");
		FUNC9("Receive & Send FPDMA Queued    %s\n",
		    parm->satacapabilities2 & ATA_SUPPORT_RCVSND_FPDMA_QUEUED ?
		    "yes" : "no");
		FUNC9("NCQ Autosense                  %s\n",
		    parm->satasupport & ATA_SUPPORT_NCQ_AUTOSENSE ?
		    "yes" : "no");
	} else
		FUNC9("no\n");

	FUNC9("SMART                          %s	%s\n",
		parm->support.command1 & ATA_SUPPORT_SMART ? "yes" : "no",
		parm->enabled.command1 & ATA_SUPPORT_SMART ? "yes" : "no");
	FUNC9("security                       %s	%s\n",
		parm->support.command1 & ATA_SUPPORT_SECURITY ? "yes" : "no",
		parm->enabled.command1 & ATA_SUPPORT_SECURITY ? "yes" : "no");
	FUNC9("power management               %s	%s\n",
		parm->support.command1 & ATA_SUPPORT_POWERMGT ? "yes" : "no",
		parm->enabled.command1 & ATA_SUPPORT_POWERMGT ? "yes" : "no");
	FUNC9("microcode download             %s	%s\n",
		parm->support.command2 & ATA_SUPPORT_MICROCODE ? "yes" : "no",
		parm->enabled.command2 & ATA_SUPPORT_MICROCODE ? "yes" : "no");
	FUNC9("advanced power management      %s	%s",
		parm->support.command2 & ATA_SUPPORT_APM ? "yes" : "no",
		parm->enabled.command2 & ATA_SUPPORT_APM ? "yes" : "no");
		if (parm->support.command2 & ATA_SUPPORT_APM) {
			FUNC9("	%d/0x%02X\n",
			    parm->apm_value & 0xff, parm->apm_value & 0xff);
		} else
			FUNC9("\n");
	FUNC9("automatic acoustic management  %s	%s",
		parm->support.command2 & ATA_SUPPORT_AUTOACOUSTIC ? "yes" :"no",
		parm->enabled.command2 & ATA_SUPPORT_AUTOACOUSTIC ? "yes" :"no");
		if (parm->support.command2 & ATA_SUPPORT_AUTOACOUSTIC) {
			FUNC9("	%d/0x%02X	%d/0x%02X\n",
			    FUNC0(parm->acoustic),
			    FUNC0(parm->acoustic),
			    FUNC1(parm->acoustic),
			    FUNC1(parm->acoustic));
		} else
			FUNC9("\n");
	FUNC9("media status notification      %s	%s\n",
		parm->support.command2 & ATA_SUPPORT_NOTIFY ? "yes" : "no",
		parm->enabled.command2 & ATA_SUPPORT_NOTIFY ? "yes" : "no");
	FUNC9("power-up in Standby            %s	%s\n",
		parm->support.command2 & ATA_SUPPORT_STANDBY ? "yes" : "no",
		parm->enabled.command2 & ATA_SUPPORT_STANDBY ? "yes" : "no");
	FUNC9("write-read-verify              %s	%s",
		parm->support2 & ATA_SUPPORT_WRITEREADVERIFY ? "yes" : "no",
		parm->enabled2 & ATA_SUPPORT_WRITEREADVERIFY ? "yes" : "no");
		if (parm->support2 & ATA_SUPPORT_WRITEREADVERIFY) {
			FUNC9("	%d/0x%x\n",
			    parm->wrv_mode, parm->wrv_mode);
		} else
			FUNC9("\n");
	FUNC9("unload                         %s	%s\n",
		parm->support.extension & ATA_SUPPORT_UNLOAD ? "yes" : "no",
		parm->enabled.extension & ATA_SUPPORT_UNLOAD ? "yes" : "no");
	FUNC9("general purpose logging        %s	%s\n",
		parm->support.extension & ATA_SUPPORT_GENLOG ? "yes" : "no",
		parm->enabled.extension & ATA_SUPPORT_GENLOG ? "yes" : "no");
	FUNC9("free-fall                      %s	%s\n",
		parm->support2 & ATA_SUPPORT_FREEFALL ? "yes" : "no",
		parm->enabled2 & ATA_SUPPORT_FREEFALL ? "yes" : "no");
	FUNC9("sense data reporting           %s	%s\n",
		parm->support2 & ATA_SUPPORT_SENSE_REPORT ? "yes" : "no",
		parm->enabled2 & ATA_SUPPORT_SENSE_REPORT ? "yes" : "no");
	FUNC9("extended power conditions      %s	%s\n",
		parm->support2 & ATA_SUPPORT_EPC ? "yes" : "no",
		parm->enabled2 & ATA_SUPPORT_EPC ? "yes" : "no");
	FUNC9("device statistics notification %s	%s\n",
		parm->support2 & ATA_SUPPORT_DSN ? "yes" : "no",
		parm->enabled2 & ATA_SUPPORT_DSN ? "yes" : "no");
	FUNC9("Data Set Management (DSM/TRIM) ");
	if (parm->support_dsm & ATA_SUPPORT_DSM_TRIM) {
		FUNC9("yes\n");
		FUNC9("DSM - max 512byte blocks       ");
		if (parm->max_dsm_blocks == 0x00)
			FUNC9("yes              not specified\n");
		else
			FUNC9("yes              %d\n",
				parm->max_dsm_blocks);

		FUNC9("DSM - deterministic read       ");
		if (parm->support3 & ATA_SUPPORT_DRAT) {
			if (parm->support3 & ATA_SUPPORT_RZAT)
				FUNC9("yes              zeroed\n");
			else
				FUNC9("yes              any value\n");
		} else {
			FUNC9("no\n");
		}
	} else {
		FUNC9("no\n");
	}
	FUNC9("Trusted Computing              %s\n",
	    ((parm->tcg & 0xc000) == 0x4000) && (parm->tcg & ATA_SUPPORT_TCG) ?
	    "yes" : "no");
	FUNC9("encrypts all user data         %s\n",
		parm->support3 & ATA_ENCRYPTS_ALL_USER_DATA ? "yes" : "no");
	FUNC9("Sanitize                       ");
	if (parm->multi & ATA_SUPPORT_SANITIZE) {
		FUNC9("yes\t\t%s%s%s\n",
		    parm->multi & ATA_SUPPORT_BLOCK_ERASE_EXT ? "block, " : "",
		    parm->multi & ATA_SUPPORT_OVERWRITE_EXT ? "overwrite, " : "",
		    parm->multi & ATA_SUPPORT_CRYPTO_SCRAMBLE_EXT ? "crypto" : "");
		FUNC9("Sanitize - commands allowed    %s\n",
		    parm->multi & ATA_SUPPORT_SANITIZE_ALLOWED ? "yes" : "no");
		FUNC9("Sanitize - antifreeze lock     %s\n",
		    parm->multi & ATA_SUPPORT_ANTIFREEZE_LOCK_EXT ? "yes" : "no");
	} else {
		FUNC9("no\n");
	}
}