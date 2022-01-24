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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr,
"usage: mdconfig -a -t type [-n] [-o [no]option] ... [-f file]\n"
"                [-s size] [-S sectorsize] [-u unit] [-L label]\n"
"                [-x sectors/track] [-y heads/cylinder]\n"
"       mdconfig -d -u unit [-o [no]force]\n"
"       mdconfig -r -u unit -s size [-o [no]force]\n"
"       mdconfig -l [-v] [-n] [-f file] [-u unit]\n"
"       mdconfig file\n");
	FUNC1(stderr, "\t\ttype = {malloc, vnode, swap}\n");
	FUNC1(stderr, "\t\toption = {cache, cluster, compress, force,\n");
	FUNC1(stderr, "\t\t          readonly, reserve, ro, verify}\n");
	FUNC1(stderr, "\t\tsize = %%d (512 byte blocks), %%db (B),\n");
	FUNC1(stderr, "\t\t       %%dk (kB), %%dm (MB), %%dg (GB), \n");
	FUNC1(stderr, "\t\t       %%dt (TB), or %%dp (PB)\n");
	FUNC0(1);
}