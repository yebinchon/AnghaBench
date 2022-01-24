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
struct objfile {scalar_t__ sym_private; int /*<<< orphan*/  objfile_obstack; } ;
struct coff_symfile_info {char* strtbl; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,long) ; 

__attribute__((used)) static void
FUNC9 (bfd *abfd, file_ptr offset, struct objfile *objfile)
{
  long length;
  int val;
  unsigned char lengthbuf[4];
  char *strtbl;

  ((struct coff_symfile_info *) objfile->sym_private)->strtbl = NULL;

  if (FUNC5 (abfd, offset, SEEK_SET) < 0)
    FUNC6 ("cannot seek to string table in %s: %s",
	   FUNC3 (abfd), FUNC1 (FUNC2 ()));

  val = FUNC0 ((char *) lengthbuf, sizeof lengthbuf, abfd);
  length = FUNC4 (abfd, lengthbuf);

  /* If no string table is needed, then the file may end immediately
     after the symbols.  Just return with `strtbl' set to NULL.  */

  if (val != sizeof lengthbuf || length < sizeof lengthbuf)
    return;

  /* Allocate string table from objfile_obstack. We will need this table
     as long as we have its symbol table around. */

  strtbl = (char *) FUNC8 (&objfile->objfile_obstack, length);
  ((struct coff_symfile_info *) objfile->sym_private)->strtbl = strtbl;

  /* Copy length buffer, the first byte is usually zero and is
     used for stabs with a name length of zero.  */
  FUNC7 (strtbl, lengthbuf, sizeof lengthbuf);
  if (length == sizeof lengthbuf)
    return;

  val = FUNC0 (strtbl + sizeof lengthbuf, length - sizeof lengthbuf, abfd);

  if (val != length - sizeof lengthbuf)
    FUNC6 ("cannot read string table from %s: %s",
	   FUNC3 (abfd), FUNC1 (FUNC2 ()));
  if (strtbl[length - 1] != '\0')
    FUNC6 ("bad symbol file: string table does not end with null character");

  return;
}