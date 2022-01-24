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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  (*) (char*),char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

bfd *
FUNC18 (char *name)
{
  bfd *sym_bfd;
  int desc;
  char *absolute_name;



  name = FUNC16 (name);	/* Returns 1st new malloc'd copy */

  /* Look down path for it, allocate 2nd new malloc'd copy.  */
  desc = FUNC11 (FUNC9 ("PATH"), 1, name, O_RDONLY | O_BINARY, 0, &absolute_name);
#if defined(__GO32__) || defined(_WIN32) || defined (__CYGWIN__)
  if (desc < 0)
    {
      char *exename = alloca (strlen (name) + 5);
      strcat (strcpy (exename, name), ".exe");
      desc = openp (getenv ("PATH"), 1, exename, O_RDONLY | O_BINARY,
		    0, &absolute_name);
    }
#endif
  if (desc < 0)
    {
      FUNC10 (xfree, name);
      FUNC12 (name);
    }
  FUNC17 (name);			/* Free 1st new malloc'd copy */
  name = absolute_name;		/* Keep 2nd malloc'd copy in bfd */
  /* It'll be freed in free_objfile(). */

  sym_bfd = FUNC4 (name, gnutarget, desc);
  if (!sym_bfd)
    {
      FUNC7 (desc);
      FUNC10 (xfree, name);
      FUNC8 ("\"%s\": can't open to read symbols: %s.", name,
	     FUNC3 (FUNC5 ()));
    }
  FUNC6 (sym_bfd, 1);

  if (!FUNC1 (sym_bfd, bfd_object))
    {
      /* FIXME: should be checking for errors from bfd_close (for one thing,
         on error it does not free all the storage associated with the
         bfd).  */
      FUNC2 (sym_bfd);	/* This also closes desc */
      FUNC10 (xfree, name);
      FUNC8 ("\"%s\": can't read symbols: %s.", name,
	     FUNC3 (FUNC5 ()));
    }
  return (sym_bfd);
}