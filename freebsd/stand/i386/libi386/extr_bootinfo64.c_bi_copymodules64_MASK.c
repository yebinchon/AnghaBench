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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct preloaded_file {struct file_metadata* f_metadata; int /*<<< orphan*/  f_size; int /*<<< orphan*/  f_addr; scalar_t__ f_args; int /*<<< orphan*/  f_type; int /*<<< orphan*/  f_name; struct preloaded_file* f_next; } ;
struct file_metadata {int md_type; struct file_metadata* md_next; } ;

/* Variables and functions */
 int MODINFOMD_NOCOPY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct file_metadata*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct preloaded_file* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_offset_t
FUNC8(vm_offset_t addr)
{
    struct preloaded_file	*fp;
    struct file_metadata	*md;
    int				c;
    uint64_t			v;

    c = addr != 0;
    /* start with the first module on the list, should be the kernel */
    for (fp = FUNC7(NULL, NULL); fp != NULL; fp = fp->f_next) {

	FUNC4(addr, fp->f_name, c);	/* this field must come first */
	FUNC6(addr, fp->f_type, c);
	if (fp->f_args)
	    FUNC1(addr, fp->f_args, c);
	v = fp->f_addr;
	FUNC0(addr, v, c);
	v = fp->f_size;
	FUNC5(addr, v, c);
	for (md = fp->f_metadata; md != NULL; md = md->md_next)
	    if (!(md->md_type & MODINFOMD_NOCOPY))
		FUNC3(addr, md, c);
    }
    FUNC2(addr, c);
    return(addr);
}