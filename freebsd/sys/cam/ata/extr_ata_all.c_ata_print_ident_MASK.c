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
struct ata_params {int config; int satacapabilities; int /*<<< orphan*/  version_major; } ;
typedef  int /*<<< orphan*/  sata ;
typedef  int /*<<< orphan*/  ata ;

/* Variables and functions */
 int ATA_PROTO_ATAPI ; 
 int ATA_PROTO_CFA ; 
 int ATA_SATA_GEN1 ; 
 int ATA_SATA_GEN2 ; 
 int ATA_SATA_GEN3 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_params*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

void
FUNC4(struct ata_params *ident_data)
{
	const char *proto;
	char ata[12], sata[12];

	FUNC0(ident_data);

	proto = (ident_data->config == ATA_PROTO_CFA) ? "CFA" :
		(ident_data->config & ATA_PROTO_ATAPI) ? "ATAPI" : "ATA";
	if (FUNC1(ident_data->version_major) == 0) {
		FUNC3(ata, sizeof(ata), "%s", proto);
	} else if (FUNC1(ident_data->version_major) <= 7) {
		FUNC3(ata, sizeof(ata), "%s-%d", proto,
		    FUNC1(ident_data->version_major));
	} else if (FUNC1(ident_data->version_major) == 8) {
		FUNC3(ata, sizeof(ata), "%s8-ACS", proto);
	} else {
		FUNC3(ata, sizeof(ata), "ACS-%d %s",
		    FUNC1(ident_data->version_major) - 7, proto);
	}
	if (ident_data->satacapabilities && ident_data->satacapabilities != 0xffff) {
		if (ident_data->satacapabilities & ATA_SATA_GEN3)
			FUNC3(sata, sizeof(sata), " SATA 3.x");
		else if (ident_data->satacapabilities & ATA_SATA_GEN2)
			FUNC3(sata, sizeof(sata), " SATA 2.x");
		else if (ident_data->satacapabilities & ATA_SATA_GEN1)
			FUNC3(sata, sizeof(sata), " SATA 1.x");
		else
			FUNC3(sata, sizeof(sata), " SATA");
	} else
		sata[0] = 0;
	FUNC2(" %s%s device\n", ata, sata);
}