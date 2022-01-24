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
typedef  int uint ;
struct vmap {struct objfile* objfile; int /*<<< orphan*/  member; int /*<<< orphan*/  name; struct vmap* nxt; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct objfile {char* name; int /*<<< orphan*/ * obfd; } ;
typedef  int /*<<< orphan*/  LdInfo ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct objfile*) ; 
 scalar_t__ FUNC10 (int,struct stat*) ; 
 int FUNC11 (char*) ; 
 struct objfile* symfile_objfile ; 
 int /*<<< orphan*/  FUNC12 (struct objfile*) ; 
 struct vmap* vmap ; 
 int /*<<< orphan*/  FUNC13 (struct vmap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vmap*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC16 (LdInfo *ldi)
{
  struct stat ii, vi;
  struct vmap *vp;
  int got_one, retried;
  int got_exec_file = 0;
  uint next;
  int arch64 = FUNC0 ();

  /* For each *ldi, see if we have a corresponding *vp.
     If so, update the mapping, and symbol table.
     If not, add an entry and symbol table.  */

  do
    {
      char *name = FUNC3 (ldi, arch64);
      char *memb = name + FUNC11 (name) + 1;
      int fd = FUNC2 (ldi, arch64);

      retried = 0;

      if (FUNC10 (fd, &ii) < 0)
	{
	  /* The kernel sets ld_info to -1, if the process is still using the
	     object, and the object is removed. Keep the symbol info for the
	     removed object and issue a warning.  */
	  FUNC15 ("%s (fd=%d) has disappeared, keeping its symbols",
		   name, fd);
	  continue;
	}
    retry:
      for (got_one = 0, vp = vmap; vp; vp = vp->nxt)
	{
	  struct objfile *objfile;

	  /* First try to find a `vp', which is the same as in ldinfo.
	     If not the same, just continue and grep the next `vp'. If same,
	     relocate its tstart, tend, dstart, dend values. If no such `vp'
	     found, get out of this for loop, add this ldi entry as a new vmap
	     (add_vmap) and come back, find its `vp' and so on... */

	  /* The filenames are not always sufficient to match on. */

	  if ((name[0] == '/' && !FUNC1 (name, vp->name))
	      || (memb[0] && !FUNC1 (memb, vp->member)))
	    continue;

	  /* See if we are referring to the same file.
	     We have to check objfile->obfd, symfile.c:reread_symbols might
	     have updated the obfd after a change.  */
	  objfile = vp->objfile == NULL ? symfile_objfile : vp->objfile;
	  if (objfile == NULL
	      || objfile->obfd == NULL
	      || FUNC6 (objfile->obfd, &vi) < 0)
	    {
	      FUNC15 ("Unable to stat %s, keeping its symbols", name);
	      continue;
	    }

	  if (ii.st_dev != vi.st_dev || ii.st_ino != vi.st_ino)
	    continue;

	  if (!retried)
	    FUNC8 (fd);

	  ++got_one;

	  /* Found a corresponding VMAP.  Remap!  */

	  FUNC13 (vp, ldi, arch64);

	  /* The objfile is only NULL for the exec file.  */
	  if (vp->objfile == NULL)
	    got_exec_file = 1;

	  /* relocate symbol table(s). */
	  FUNC14 (vp);

	  /* Announce new object files.  Doing this after symbol relocation
	     makes aix-thread.c's job easier. */
	  if (&target_new_objfile_hook && vp->objfile)
	    FUNC12 (vp->objfile);

	  /* There may be more, so we don't break out of the loop.  */
	}

      /* if there was no matching *vp, we must perforce create the sucker(s) */
      if (!got_one && !retried)
	{
	  FUNC5 (ldi);
	  ++retried;
	  goto retry;
	}
    }
  while ((next = FUNC4 (ldi, arch64))
	 && (ldi = (void *) (next + (char *) ldi)));

  /* If we don't find the symfile_objfile anywhere in the ldinfo, it
     is unlikely that the symbol file is relocated to the proper
     address.  And we might have attached to a process which is
     running a different copy of the same executable.  */
  if (symfile_objfile != NULL && !got_exec_file)
    {
      FUNC15 ("Symbol file %s\nis not mapped; discarding it.\n\
If in fact that file has symbols which the mapped files listed by\n\
\"info files\" lack, you can load symbols with the \"symbol-file\" or\n\
\"add-symbol-file\" commands (note that you must take care of relocating\n\
symbols to the proper address).",
	       symfile_objfile->name);
      FUNC9 (symfile_objfile);
      symfile_objfile = NULL;
    }
  FUNC7 ();
}