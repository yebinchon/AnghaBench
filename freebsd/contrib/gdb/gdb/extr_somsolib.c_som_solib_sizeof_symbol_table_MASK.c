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
typedef  int /*<<< orphan*/  asection ;
typedef  int LONGEST ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  (*) (char*),char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static LONGEST
FUNC14 (char *filename)
{
  bfd *abfd;
  int desc;
  char *absolute_name;
  LONGEST st_size = (LONGEST) 0;
  asection *sect;

  /* We believe that filename was handed to us by the dynamic linker, and
     is therefore always an absolute path.
   */
  desc = FUNC11 (FUNC9 ("PATH"), 1, filename, O_RDONLY | O_BINARY, 0, &absolute_name);
  if (desc < 0)
    {
      FUNC12 (filename);
    }
  filename = absolute_name;

  abfd = FUNC3 (filename, gnutarget, desc);
  if (!abfd)
    {
      FUNC7 (desc);
      FUNC10 (xfree, filename);
      FUNC8 ("\"%s\": can't open to read symbols: %s.", filename,
	     FUNC2 (FUNC4 ()));
    }

  if (!FUNC0 (abfd, bfd_object))	/* Reads in section info */
    {
      FUNC1 (abfd);		/* This also closes desc */
      FUNC10 (xfree, filename);
      FUNC8 ("\"%s\": can't read symbols: %s.", filename,
	     FUNC2 (FUNC4 ()));
    }

  /* Sum the sizes of the various sections that compose debug info. */

  /* This contains non-DOC information. */
  sect = FUNC5 (abfd, "$DEBUG$");
  if (sect)
    st_size += (LONGEST) FUNC6 (abfd, sect);

  /* This contains DOC information. */
  sect = FUNC5 (abfd, "$PINFO$");
  if (sect)
    st_size += (LONGEST) FUNC6 (abfd, sect);

  FUNC1 (abfd);		/* This also closes desc */
  FUNC13 (filename);

  /* Unfortunately, just summing the sizes of various debug info
     sections isn't a very accurate measurement of how much heap
     space the debugger will need to hold them.  It also doesn't
     account for space needed by linker (aka "minimal") symbols.

     Anecdotal evidence suggests that just summing the sizes of
     debug-info-related sections understates the heap space needed
     to represent it internally by about an order of magnitude.

     Since it's not exactly brain surgery we're doing here, rather
     than attempt to more accurately measure the size of a shlib's
     symbol table in GDB's heap, we'll just apply a 10x fudge-
     factor to the debug info sections' size-sum.  No, this doesn't
     account for minimal symbols in non-debuggable shlibs.  But it
     all roughly washes out in the end.
   */
  return st_size * (LONGEST) 10;
}