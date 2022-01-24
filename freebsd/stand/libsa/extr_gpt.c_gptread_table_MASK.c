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
typedef  int /*<<< orphan*/  table ;
struct gpt_hdr {int hdr_entries; int hdr_entsz; scalar_t__ hdr_crc_table; int /*<<< orphan*/  hdr_lba_table; } ;
struct gpt_ent {int dummy; } ;
struct dsk {int dummy; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 char* BOOTPROG ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct gpt_ent*,struct gpt_ent*,int) ; 
 scalar_t__ FUNC1 (struct gpt_ent*,int) ; 
 scalar_t__ FUNC2 (struct dsk*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 scalar_t__ secbuf ; 

__attribute__((used)) static int
FUNC4(const char *which, struct dsk *dskp, struct gpt_hdr *hdr,
    struct gpt_ent *table)
{
	struct gpt_ent *ent;
	int entries_per_sec;
	int part, nent;
	daddr_t slba;

	if (hdr->hdr_entries == 0)
		return (0);

	entries_per_sec = DEV_BSIZE / hdr->hdr_entsz;
	slba = hdr->hdr_lba_table;
	nent = 0;
	for (;;) {
		if (FUNC2(dskp, secbuf, slba, 1)) {
			FUNC3("%s: unable to read %s GPT partition table\n",
			    BOOTPROG, which);
			return (-1);
		}
		ent = (struct gpt_ent *)secbuf;
		for (part = 0; part < entries_per_sec; part++, ent++) {
			FUNC0(ent, &table[nent], sizeof(table[nent]));
			if (++nent >= hdr->hdr_entries)
				break;
		}
		if (nent >= hdr->hdr_entries)
			break;
		slba++;
	}
	if (FUNC1(table, nent * hdr->hdr_entsz) != hdr->hdr_crc_table) {
		FUNC3("%s: %s GPT table checksum mismatch\n", BOOTPROG, which);
		return (-1);
	}
	return (0);
}