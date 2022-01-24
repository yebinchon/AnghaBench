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
struct link_map_offsets {scalar_t__ l_name_offset; int /*<<< orphan*/  l_name_size; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ SO_NAME_MAX_PATH_SIZE ; 
 struct link_map_offsets* FUNC0 () ; 
 int /*<<< orphan*/  debug_base ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ symfile_objfile ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char**,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13 (void *from_ttyp)
{
  CORE_ADDR lm, l_name;
  char *filename;
  int errcode;
  int from_tty = *(int *)from_ttyp;
  struct link_map_offsets *lmo = FUNC0 ();
  char *l_name_buf = FUNC12 (lmo->l_name_size);
  struct cleanup *cleanups = FUNC5 (xfree, l_name_buf);

  if (symfile_objfile)
    if (!FUNC6 ("Attempt to reload symbols from process? "))
      return 0;

  if ((debug_base = FUNC4 ()) == 0)
    return 0;	/* failed somehow... */

  /* First link map member should be the executable.  */
  if ((lm = FUNC3 ()) == 0)
    return 0;	/* failed somehow... */

  /* Read address of name from target memory to GDB.  */
  FUNC7 (lm + lmo->l_name_offset, l_name_buf, lmo->l_name_size);

  /* Convert the address to host format.  Assume that the address is
     unsigned.  */
  l_name = FUNC2 (l_name_buf, lmo->l_name_size);

  /* Free l_name_buf.  */
  FUNC1 (cleanups);

  if (l_name == 0)
    return 0;		/* No filename.  */

  /* Now fetch the filename from target memory.  */
  FUNC10 (l_name, &filename, SO_NAME_MAX_PATH_SIZE - 1, &errcode);

  if (errcode)
    {
      FUNC11 ("failed to read exec filename from attached file: %s",
	       FUNC8 (errcode));
      return 0;
    }

  FUNC5 (xfree, filename);
  /* Have a pathname: read the symbol file.  */
  FUNC9 (filename, from_tty);

  return 1;
}