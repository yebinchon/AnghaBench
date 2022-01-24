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
struct vmap {scalar_t__ tstart; scalar_t__ tend; scalar_t__ dstart; struct objfile* objfile; struct vmap* nxt; } ;
struct objfile {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct objfile* symfile_objfile ; 
 struct vmap* vmap ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (CORE_ADDR pc)
{
  struct vmap *vp;
  extern CORE_ADDR FUNC3 (struct objfile *);	/* xcoffread.c */

  for (vp = vmap; vp; vp = vp->nxt)
    {
      if (pc >= vp->tstart && pc < vp->tend)
	{
	  /* vp->objfile is only NULL for the exec file.  */
	  return vp->dstart + FUNC3 (vp->objfile == NULL
					      ? symfile_objfile
					      : vp->objfile);
	}
    }
  FUNC0 ("Unable to find TOC entry for pc %s\n", FUNC1 (pc));
}