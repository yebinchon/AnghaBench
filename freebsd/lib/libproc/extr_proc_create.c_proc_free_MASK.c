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
struct TYPE_4__ {scalar_t__ nsyms; struct proc_handle* index; } ;
struct TYPE_3__ {scalar_t__ nsyms; struct proc_handle* index; } ;
struct proc_handle {size_t nmappings; scalar_t__ refs; scalar_t__ maparrsz; int /*<<< orphan*/ * rdap; int /*<<< orphan*/ * procstat; struct proc_handle* mappings; TYPE_2__ dynsymtab; TYPE_1__ symtab; int /*<<< orphan*/  fd; int /*<<< orphan*/ * elf; struct proc_handle* file; } ;
struct file_info {size_t nmappings; scalar_t__ refs; scalar_t__ maparrsz; int /*<<< orphan*/ * rdap; int /*<<< orphan*/ * procstat; struct file_info* mappings; TYPE_2__ dynsymtab; TYPE_1__ symtab; int /*<<< orphan*/  fd; int /*<<< orphan*/ * elf; struct file_info* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct proc_handle *phdl)
{
	struct file_info *file;
	size_t i;

	for (i = 0; i < phdl->nmappings; i++) {
		file = phdl->mappings[i].file;
		if (file != NULL && --file->refs == 0) {
			if (file->elf != NULL) {
				(void)FUNC1(file->elf);
				(void)FUNC0(file->fd);
				if (file->symtab.nsyms > 0)
					FUNC2(file->symtab.index);
				if (file->dynsymtab.nsyms > 0)
					FUNC2(file->dynsymtab.index);
			}
			FUNC2(file);
		}
	}
	if (phdl->maparrsz > 0)
		FUNC2(phdl->mappings);
	if (phdl->procstat != NULL)
		FUNC3(phdl->procstat);
	if (phdl->rdap != NULL)
		FUNC4(phdl->rdap);
	FUNC2(phdl);
}