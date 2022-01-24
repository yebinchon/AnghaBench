#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct preloaded_file {int /*<<< orphan*/  f_args; } ;
struct file_metadata {int /*<<< orphan*/  md_data; } ;
struct TYPE_2__ {int e_entry; } ;
typedef  TYPE_1__ Elf_Ehdr ;

/* Variables and functions */
 int EFTYPE ; 
 int /*<<< orphan*/  MODINFOMD_ELFHDR ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file_metadata* FUNC3 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(struct preloaded_file *fp)
{
    struct file_metadata	*md;
    Elf_Ehdr 			*ehdr;
    vm_offset_t			entry, bootinfop, modulep, kernend;
    int				boothowto, err, bootdev;

    if ((md = FUNC3(fp, MODINFOMD_ELFHDR)) == NULL)
	return(EFTYPE);
    ehdr = (Elf_Ehdr *)&(md->md_data);

    err = FUNC1(fp->f_args, &boothowto, &bootdev, &bootinfop, &modulep, &kernend);
    if (err != 0)
	return(err);
    entry = ehdr->e_entry & 0xffffff;

#ifdef DEBUG
    printf("Start @ 0x%lx ...\n", entry);
#endif

    FUNC2();
    FUNC0((void *)entry, boothowto, bootdev, 0, 0, 0, bootinfop, modulep, kernend);

    FUNC4("exec returned");
}