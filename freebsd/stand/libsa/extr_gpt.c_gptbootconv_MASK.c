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
struct gpt_hdr {int hdr_entsz; scalar_t__ hdr_lba_table; int hdr_entries; int ent_attr; int hdr_size; scalar_t__ hdr_lba_self; void* hdr_crc_self; void* hdr_crc_table; } ;
struct gpt_ent {int hdr_entsz; scalar_t__ hdr_lba_table; int hdr_entries; int ent_attr; int hdr_size; scalar_t__ hdr_lba_self; void* hdr_crc_self; void* hdr_crc_table; } ;
struct dsk {int dummy; } ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 char* BOOTPROG ; 
 int DEV_BSIZE ; 
 int GPT_ENT_ATTR_BOOTFAILED ; 
 int GPT_ENT_ATTR_BOOTME ; 
 int GPT_ENT_ATTR_BOOTONCE ; 
 int /*<<< orphan*/  FUNC0 (struct gpt_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct gpt_hdr*,int) ; 
 scalar_t__ FUNC3 (struct dsk*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  secbuf ; 

__attribute__((used)) static void
FUNC5(const char *which, struct dsk *dskp, struct gpt_hdr *hdr,
    struct gpt_ent *table)
{
	struct gpt_ent *ent;
	daddr_t slba;
	int table_updated, sector_updated;
	int entries_per_sec, nent, part;

	table_updated = 0;
	entries_per_sec = DEV_BSIZE / hdr->hdr_entsz;
	for (nent = 0, slba = hdr->hdr_lba_table;
	     slba < hdr->hdr_lba_table + hdr->hdr_entries / entries_per_sec;
	     slba++, nent += entries_per_sec) {
		sector_updated = 0;
		for (part = 0; part < entries_per_sec; part++) {
			ent = &table[nent + part];
			if ((ent->ent_attr & (GPT_ENT_ATTR_BOOTME |
			    GPT_ENT_ATTR_BOOTONCE |
			    GPT_ENT_ATTR_BOOTFAILED)) !=
			    GPT_ENT_ATTR_BOOTONCE) {
				continue;
			}
			ent->ent_attr &= ~GPT_ENT_ATTR_BOOTONCE;
			ent->ent_attr |= GPT_ENT_ATTR_BOOTFAILED;
			table_updated = 1;
			sector_updated = 1;
		}
		if (!sector_updated)
			continue;
		FUNC0(&table[nent], secbuf, DEV_BSIZE);
		if (FUNC3(dskp, secbuf, slba, 1)) {
			FUNC4("%s: unable to update %s GPT partition table\n",
			    BOOTPROG, which);
		}
	}
	if (!table_updated)
		return;
	hdr->hdr_crc_table = FUNC2(table, hdr->hdr_entries * hdr->hdr_entsz);
	hdr->hdr_crc_self = 0;
	hdr->hdr_crc_self = FUNC2(hdr, hdr->hdr_size);
	FUNC1(secbuf, DEV_BSIZE);
	FUNC0(hdr, secbuf, hdr->hdr_size);
	if (FUNC3(dskp, secbuf, hdr->hdr_lba_self, 1))
		FUNC4("%s: unable to update %s GPT header\n", BOOTPROG, which);
}