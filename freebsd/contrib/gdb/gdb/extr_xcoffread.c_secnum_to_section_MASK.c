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
struct objfile {int /*<<< orphan*/  obfd; } ;
struct find_targ_sec_arg {int targ_index; int* resultp; struct objfile* objfile; int /*<<< orphan*/ ** bfd_sect; } ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int FUNC0 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_targ_sec_arg*) ; 
 int /*<<< orphan*/  find_targ_sec ; 

__attribute__((used)) static int
FUNC2 (int secnum, struct objfile *objfile)
{
  int off = FUNC0 (objfile);
  asection *sect = NULL;
  struct find_targ_sec_arg args;
  args.targ_index = secnum;
  args.resultp = &off;
  args.bfd_sect = &sect;
  args.objfile = objfile;
  FUNC1 (objfile->obfd, find_targ_sec, &args);
  return off;
}