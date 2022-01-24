#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vmap {scalar_t__ objfile; int /*<<< orphan*/  dend; int /*<<< orphan*/  dstart; int /*<<< orphan*/  bfd; int /*<<< orphan*/  tend; int /*<<< orphan*/  tstart; } ;
struct target_ops {struct section_table* to_sections_end; } ;
struct section_table {int /*<<< orphan*/  endaddr; int /*<<< orphan*/  addr; int /*<<< orphan*/  bfd; void* the_bfd_section; } ;
struct cleanup {int dummy; } ;
struct bfd_section {int dummy; } ;
struct TYPE_9__ {int ldinfo_fd; } ;
struct TYPE_8__ {int ldinfo_fd; } ;
struct TYPE_10__ {TYPE_2__ l32; TYPE_1__ l64; } ;
typedef  TYPE_3__ LdInfo ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 struct vmap* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct bfd_section*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  core_bfd ; 
 int /*<<< orphan*/  FUNC9 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stderr ; 
 struct cleanup* FUNC11 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct target_ops*,int) ; 
 struct vmap* vmap ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct vmap*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct vmap*) ; 
 char* FUNC17 (int) ; 
 char* FUNC18 (char*,int) ; 

void
FUNC19 (struct target_ops *target)
{
  struct bfd_section *ldinfo_sec;
  int offset = 0;
  LdInfo *ldi;
  struct vmap *vp;
  int arch64 = FUNC0 ();

  /* Size of a struct ld_info except for the variable-length filename. */
  int nonfilesz = (int)FUNC1 ((LdInfo *)0, arch64);

  /* Allocated size of buffer.  */
  int buffer_size = nonfilesz;
  char *buffer = FUNC17 (buffer_size);
  struct cleanup *old = FUNC11 (free_current_contents, &buffer);

  ldinfo_sec = FUNC6 (core_bfd, ".ldinfo");
  if (ldinfo_sec == NULL)
    {
    bfd_err:
      FUNC10 (gdb_stderr, "Couldn't get ldinfo from core file: %s\n",
			FUNC4 (FUNC5 ()));
      FUNC9 (old);
      return;
    }
  do
    {
      int i;
      int names_found = 0;

      /* Read in everything but the name.  */
      if (FUNC7 (core_bfd, ldinfo_sec, buffer,
				    offset, nonfilesz) == 0)
	goto bfd_err;

      /* Now the name.  */
      i = nonfilesz;
      do
	{
	  if (i == buffer_size)
	    {
	      buffer_size *= 2;
	      buffer = FUNC18 (buffer, buffer_size);
	    }
	  if (FUNC7 (core_bfd, ldinfo_sec, &buffer[i],
					offset + i, 1) == 0)
	    goto bfd_err;
	  if (buffer[i++] == '\0')
	    ++names_found;
	}
      while (names_found < 2);

      ldi = (LdInfo *) buffer;

      /* Can't use a file descriptor from the core file; need to open it.  */
      if (arch64)
	ldi->l64.ldinfo_fd = -1;
      else
	ldi->l32.ldinfo_fd = -1;

      /* The first ldinfo is for the exec file, allocated elsewhere.  */
      if (offset == 0 && vmap != NULL)
	vp = vmap;
      else
	vp = FUNC3 (ldi);

      /* Process next shared library upon error. */
      offset += FUNC2 (ldi, arch64);
      if (vp == NULL)
	continue;

      FUNC15 (vp, ldi, arch64);

      /* Unless this is the exec file,
         add our sections to the section table for the core target.  */
      if (vp != vmap)
	{
	  struct section_table *stp;

	  FUNC13 (target, 2);
	  stp = target->to_sections_end - 2;

	  stp->bfd = vp->bfd;
	  stp->the_bfd_section = FUNC6 (stp->bfd, ".text");
	  stp->addr = vp->tstart;
	  stp->endaddr = vp->tend;
	  stp++;

	  stp->bfd = vp->bfd;
	  stp->the_bfd_section = FUNC6 (stp->bfd, ".data");
	  stp->addr = vp->dstart;
	  stp->endaddr = vp->dend;
	}

      FUNC16 (vp);

      if (&target_new_objfile_hook && vp != vmap && vp->objfile)
	FUNC12 (vp->objfile);
    }
  while (FUNC2 (ldi, arch64) != 0);
  FUNC14 ();
  FUNC8 ();
  FUNC9 (old);
}