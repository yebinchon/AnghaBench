#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct proc_handle {int dummy; } ;
struct TYPE_7__ {char const* pr_mapname; uintptr_t pr_vaddr; uintptr_t pr_offset; } ;
struct map_info {TYPE_2__ map; struct file_info* file; } ;
struct TYPE_6__ {scalar_t__ e_type; } ;
struct file_info {int /*<<< orphan*/  symtab; int /*<<< orphan*/  elf; int /*<<< orphan*/  dynsymtab; TYPE_1__ ehdr; } ;
typedef  int /*<<< orphan*/  prsyminfo_t ;
struct TYPE_8__ {uintptr_t st_value; } ;
typedef  TYPE_3__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int ENOENT ; 
 scalar_t__ ET_DYN ; 
 struct map_info* FUNC1 (struct proc_handle*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct map_info*) ; 

int
FUNC4(struct proc_handle *p, const char *object, const char *symbol,
    GElf_Sym *symcopy, prsyminfo_t *si)
{
	struct file_info *file;
	struct map_info *mapping;
	uintptr_t off;
	int error;

	if ((mapping = FUNC1(p, object)) == NULL) {
		FUNC0("ERROR: proc_name2map failed to resolve %s", object);
		return (-1);
	}
	if (FUNC3(mapping) != 0) {
		FUNC0("ERROR: failed to open object %s",
		    mapping->map.pr_mapname);
		return (-1);
	}

	file = mapping->file;
	off = file->ehdr.e_type == ET_DYN ?
	    mapping->map.pr_vaddr - mapping->map.pr_offset : 0;

	error = FUNC2(file->elf, &file->dynsymtab, symbol,
	    symcopy, si);
	if (error == ENOENT)
		error = FUNC2(file->elf, &file->symtab, symbol,
		    symcopy, si);
	if (error == 0)
		symcopy->st_value += off;
	return (error);
}