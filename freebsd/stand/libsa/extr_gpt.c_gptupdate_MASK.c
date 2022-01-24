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
struct gpt_hdr {int hdr_entsz; int hdr_entries; int hdr_size; int hdr_lba_self; void* hdr_crc_self; void* hdr_crc_table; scalar_t__ hdr_lba_table; } ;
struct gpt_ent {int hdr_entsz; int hdr_entries; int hdr_size; int hdr_lba_self; void* hdr_crc_self; void* hdr_crc_table; scalar_t__ hdr_lba_table; } ;
struct dsk {int dummy; } ;
typedef  int daddr_t ;

/* Variables and functions */
 char* BOOTPROG ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct gpt_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct gpt_hdr*,int) ; 
 int curent ; 
 scalar_t__ FUNC3 (struct dsk*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  secbuf ; 

__attribute__((used)) static void
FUNC5(const char *which, struct dsk *dskp, struct gpt_hdr *hdr,
    struct gpt_ent *table)
{
	int entries_per_sec, firstent;
	daddr_t slba;

	/*
	 * We need to update the following for both primary and backup GPT:
	 * 1. Sector on disk that contains current partition.
	 * 2. Partition table checksum.
	 * 3. Header checksum.
	 * 4. Header on disk.
	 */

	entries_per_sec = DEV_BSIZE / hdr->hdr_entsz;
	slba = curent / entries_per_sec;
	firstent = slba * entries_per_sec;
	FUNC0(&table[firstent], secbuf, DEV_BSIZE);
	slba += hdr->hdr_lba_table;
	if (FUNC3(dskp, secbuf, slba, 1)) {
		FUNC4("%s: unable to update %s GPT partition table\n",
		    BOOTPROG, which);
		return;
	}
	hdr->hdr_crc_table = FUNC2(table, hdr->hdr_entries * hdr->hdr_entsz);
	hdr->hdr_crc_self = 0;
	hdr->hdr_crc_self = FUNC2(hdr, hdr->hdr_size);
	FUNC1(secbuf, DEV_BSIZE);
	FUNC0(hdr, secbuf, hdr->hdr_size);
	if (FUNC3(dskp, secbuf, hdr->hdr_lba_self, 1)) {
		FUNC4("%s: unable to update %s GPT header\n", BOOTPROG, which);
		return;
	}
}