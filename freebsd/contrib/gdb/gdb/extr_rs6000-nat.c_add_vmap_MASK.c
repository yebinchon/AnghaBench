#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct vmap {struct objfile* objfile; int /*<<< orphan*/  bfd; } ;
struct objfile {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  LdInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct objfile* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arch64 ; 
 scalar_t__ auto_solib_add ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_1__* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  gnutarget ; 
 struct vmap* FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC13 (char*,int) ; 
 int FUNC14 (char*) ; 
 struct vmap* vmap ; 
 int /*<<< orphan*/  FUNC15 (struct vmap*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*,...) ; 

__attribute__((used)) static struct vmap *
FUNC17 (LdInfo *ldi)
{
  bfd *abfd, *last;
  char *mem, *objname, *filename;
  struct objfile *obj;
  struct vmap *vp;
  int fd;
  FUNC0 (arch64);

  /* This ldi structure was allocated using alloca() in 
     xcoff_relocate_symtab(). Now we need to have persistent object 
     and member names, so we should save them. */

  filename = FUNC3 (ldi, arch64);
  mem = filename + FUNC14 (filename) + 1;
  mem = FUNC13 (mem, FUNC14 (mem));
  objname = FUNC13 (filename, FUNC14 (filename));

  fd = FUNC2 (ldi, arch64);
  if (fd < 0)
    /* Note that this opens it once for every member; a possible
       enhancement would be to only open it once for every object.  */
    abfd = FUNC10 (objname, gnutarget);
  else
    abfd = FUNC8 (objname, gnutarget, fd);
  if (!abfd)
    {
      FUNC16 ("Could not open `%s' as an executable file: %s",
	       objname, FUNC7 (FUNC9 ()));
      return NULL;
    }

  /* make sure we have an object file */

  if (FUNC5 (abfd, bfd_object))
    vp = FUNC12 (abfd, 0);

  else if (FUNC5 (abfd, bfd_archive))
    {
      last = 0;
      /* FIXME??? am I tossing BFDs?  bfd? */
      while ((last = FUNC11 (abfd, last)))
	if (FUNC1 (mem, last->filename))
	  break;

      if (!last)
	{
	  FUNC16 ("\"%s\": member \"%s\" missing.", objname, mem);
	  FUNC6 (abfd);
	  return NULL;
	}

      if (!FUNC5 (last, bfd_object))
	{
	  FUNC16 ("\"%s\": member \"%s\" not in executable format: %s.",
		   objname, mem, FUNC7 (FUNC9 ()));
	  FUNC6 (last);
	  FUNC6 (abfd);
	  return NULL;
	}

      vp = FUNC12 (last, abfd);
    }
  else
    {
      FUNC16 ("\"%s\": not in executable format: %s.",
	       objname, FUNC7 (FUNC9 ()));
      FUNC6 (abfd);
      return NULL;
    }
  obj = FUNC4 (vp->bfd, 0);
  vp->objfile = obj;

  /* Always add symbols for the main objfile.  */
  if (vp == vmap || auto_solib_add)
    FUNC15 (vp);
  return vp;
}