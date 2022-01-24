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
 int FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct file_metadata* FUNC5 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(struct preloaded_file *fp)
{
    struct file_metadata	*md;
    Elf_Ehdr 			*ehdr;
    vm_offset_t			entry, bootinfop, modulep, kernend;
    int				boothowto, err, bootdev;

    if ((md = FUNC5(fp, MODINFOMD_ELFHDR)) == NULL)
	return(EFTYPE);
    ehdr = (Elf_Ehdr *)&(md->md_data);

    FUNC3();

    entry = ehdr->e_entry & 0xffffff;

    FUNC7("Start @ 0x%x ...\n", entry);

    err = FUNC1(fp->f_args, &modulep, &kernend);
    if (err != 0) {
	FUNC4();
	return(err);
    }

    /* At this point we've called ExitBootServices, so we can't call
     * printf or any other function that uses Boot Services */

    FUNC2();
    FUNC0((void *)entry, boothowto, bootdev, 0, 0, 0, bootinfop, modulep, kernend);

    FUNC6("exec returned");
}