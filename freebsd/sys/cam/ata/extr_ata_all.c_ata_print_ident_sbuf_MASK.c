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
struct sbuf {int dummy; } ;
struct ata_params {int config; int satacapabilities; int /*<<< orphan*/  version_major; } ;

/* Variables and functions */
 int ATA_PROTO_ATAPI ; 
 int ATA_PROTO_CFA ; 
 int ATA_SATA_GEN1 ; 
 int ATA_SATA_GEN2 ; 
 int ATA_SATA_GEN3 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_params*,struct sbuf*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,...) ; 

void
FUNC3(struct ata_params *ident_data, struct sbuf *sb)
{
	const char *proto, *sata;
	int version;

	FUNC0(ident_data, sb);
	FUNC2(sb, " ");

	proto = (ident_data->config == ATA_PROTO_CFA) ? "CFA" :
		(ident_data->config & ATA_PROTO_ATAPI) ? "ATAPI" : "ATA";
	version = FUNC1(ident_data->version_major);

	switch (version) {
	case 0:
		FUNC2(sb, "%s", proto);
		break;
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
		FUNC2(sb, "%s-%d", proto, version);
		break;
	case 8:
		FUNC2(sb, "%s8-ACS", proto);
		break;
	default:
		FUNC2(sb, "ACS-%d %s", version - 7, proto);
		break;
	}

	if (ident_data->satacapabilities && ident_data->satacapabilities != 0xffff) {
		if (ident_data->satacapabilities & ATA_SATA_GEN3)
			sata = " SATA 3.x";
		else if (ident_data->satacapabilities & ATA_SATA_GEN2)
			sata = " SATA 2.x";
		else if (ident_data->satacapabilities & ATA_SATA_GEN1)
			sata = " SATA 1.x";
		else
			sata = " SATA";
	} else
		sata = "";
	FUNC2(sb, "%s device\n", sata);
}