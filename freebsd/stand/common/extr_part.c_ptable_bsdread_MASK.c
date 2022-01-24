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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ptable {int sectorsize; int /*<<< orphan*/  type; int /*<<< orphan*/  entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  bsd; } ;
struct TYPE_3__ {int start; int end; int index; int /*<<< orphan*/  type; } ;
struct pentry {TYPE_2__ type; TYPE_1__ part; } ;
struct partition {scalar_t__ p_offset; scalar_t__ p_size; int /*<<< orphan*/  p_fstype; } ;
struct disklabel {scalar_t__ d_magic; scalar_t__ d_magic2; scalar_t__ d_secsize; int d_npartitions; struct partition* d_partitions; } ;
typedef  scalar_t__ (* diskread_t ) (void*,int /*<<< orphan*/ *,int,int) ;

/* Variables and functions */
 int DISKMAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PTABLE_BSD ; 
 size_t RAW_PART ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pentry*,struct pentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ptable*) ; 

__attribute__((used)) static struct ptable *
FUNC8(struct ptable *table, void *dev, diskread_t dread)
{
	struct disklabel *dl;
	struct partition *part;
	struct pentry *entry;
	uint8_t *buf;
	uint32_t raw_offset;
	int i;

	if (table->sectorsize < sizeof(struct disklabel)) {
		FUNC0("Too small sectorsize");
		return (table);
	}
	buf = FUNC6(table->sectorsize);
	if (buf == NULL)
		return (table);
	if (dread(dev, buf, 1, 1) != 0) {
		FUNC0("read failed");
		FUNC7(table);
		table = NULL;
		goto out;
	}
	dl = (struct disklabel *)buf;
	if (FUNC5(dl->d_magic) != DISKMAGIC &&
	    FUNC5(dl->d_magic2) != DISKMAGIC)
		goto out;
	if (FUNC5(dl->d_secsize) != table->sectorsize) {
		FUNC0("unsupported sector size");
		goto out;
	}
	dl->d_npartitions = FUNC4(dl->d_npartitions);
	if (dl->d_npartitions > 20 || dl->d_npartitions < 8) {
		FUNC0("invalid number of partitions");
		goto out;
	}
	FUNC0("BSD detected");
	part = &dl->d_partitions[0];
	raw_offset = FUNC5(part[RAW_PART].p_offset);
	for (i = 0; i < dl->d_npartitions; i++, part++) {
		if (i == RAW_PART)
			continue;
		if (part->p_size == 0)
			continue;
		entry = FUNC6(sizeof(*entry));
		if (entry == NULL)
			break;
		entry->part.start = FUNC5(part->p_offset) - raw_offset;
		entry->part.end = entry->part.start +
		    FUNC5(part->p_size) - 1;
		entry->part.type = FUNC2(part->p_fstype);
		entry->part.index = i; /* starts from zero */
		entry->type.bsd = part->p_fstype;
		FUNC1(&table->entries, entry, entry);
		FUNC0("new BSD partition added");
	}
	table->type = PTABLE_BSD;
out:
	FUNC3(buf);
	return (table);
}