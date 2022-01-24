#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct dsk {scalar_t__ start; } ;
struct TYPE_7__ {scalar_t__ hdr_lba_self; int hdr_lba_alt; } ;

/* Variables and functions */
 char* BOOTPROG ; 
 int bootonce ; 
 int curent ; 
 int FUNC0 (struct dsk*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct dsk*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* gpthdr ; 
 scalar_t__ FUNC2 (char*,struct dsk*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (char*,struct dsk*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpttable ; 
 TYPE_1__ hdr_backup ; 
 scalar_t__ hdr_backup_lba ; 
 TYPE_1__ hdr_primary ; 
 scalar_t__ hdr_primary_lba ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* secbuf ; 
 int /*<<< orphan*/  table_backup ; 
 int /*<<< orphan*/  table_primary ; 

int
FUNC5(struct dsk *dskp, char *buf)
{
	uint64_t altlba;

	/*
	 * Read and verify both GPT headers: primary and backup.
	 */

	secbuf = buf;
	hdr_primary_lba = hdr_backup_lba = 0;
	curent = -1;
	bootonce = 1;
	dskp->start = 0;

	if (FUNC2("primary", dskp, &hdr_primary, 1) == 0 &&
	    FUNC3("primary", dskp, &hdr_primary, table_primary) == 0) {
		hdr_primary_lba = hdr_primary.hdr_lba_self;
		gpthdr = &hdr_primary;
		gpttable = table_primary;
	}

	if (hdr_primary_lba > 0) {
		/*
		 * If primary header is valid, we can get backup
		 * header location from there.
		 */
		altlba = hdr_primary.hdr_lba_alt;
	} else {
		altlba = FUNC0(dskp);
		if (altlba > 0)
			altlba--;
	}
	if (altlba == 0)
		FUNC4("%s: unable to locate backup GPT header\n", BOOTPROG);
	else if (FUNC2("backup", dskp, &hdr_backup, altlba) == 0 &&
	    FUNC3("backup", dskp, &hdr_backup, table_backup) == 0) {
		hdr_backup_lba = hdr_backup.hdr_lba_self;
		if (hdr_primary_lba == 0) {
			gpthdr = &hdr_backup;
			gpttable = table_backup;
			FUNC4("%s: using backup GPT\n", BOOTPROG);
		}
	}

	/*
	 * Convert all BOOTONCE without BOOTME flags into BOOTFAILED.
	 * BOOTONCE without BOOTME means that we tried to boot from it,
	 * but failed after leaving gptboot and machine was rebooted.
	 * We don't want to leave partitions marked as BOOTONCE only,
	 * because when we boot successfully start-up scripts should
	 * find at most one partition with only BOOTONCE flag and this
	 * will mean that we booted from that partition.
	 */
	if (hdr_primary_lba != 0)
		FUNC1("primary", dskp, &hdr_primary, table_primary);
	if (hdr_backup_lba != 0)
		FUNC1("backup", dskp, &hdr_backup, table_backup);

	if (hdr_primary_lba == 0 && hdr_backup_lba == 0)
		return (-1);
	return (0);
}