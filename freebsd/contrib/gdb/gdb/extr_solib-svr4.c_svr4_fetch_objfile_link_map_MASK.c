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
struct objfile {char* name; int flags; } ;
struct lm_info {char* lm; } ;
struct link_map_offsets {int l_next_offset; int /*<<< orphan*/  l_next_size; int /*<<< orphan*/  l_name_size; scalar_t__ l_name_offset; int /*<<< orphan*/  link_map_size; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int OBJF_SHARED ; 
 scalar_t__ SO_NAME_MAX_PATH_SIZE ; 
 struct link_map_offsets* FUNC0 () ; 
 int /*<<< orphan*/  debug_base ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char**,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC13 (struct objfile *objfile)
{
  CORE_ADDR lm;

  if ((debug_base = FUNC4 ()) == 0)
    return 0;   /* failed somehow... */

  /* Position ourselves on the first link map.  */
  lm = FUNC3 ();  
  while (lm)
    {
      /* Get info on the layout of the r_debug and link_map structures. */
      struct link_map_offsets *lmo = FUNC0 ();
      int errcode;
      char *buffer;
      struct lm_info objfile_lm_info;
      struct cleanup *old_chain;
      CORE_ADDR name_address;
      char *l_name_buf = FUNC12 (lmo->l_name_size);
      old_chain = FUNC5 (xfree, l_name_buf);

      /* Set up the buffer to contain the portion of the link_map
         structure that gdb cares about.  Note that this is not the
         whole link_map structure.  */
      objfile_lm_info.lm = FUNC12 (lmo->link_map_size);
      FUNC5 (xfree, objfile_lm_info.lm);
      FUNC6 (objfile_lm_info.lm, 0, lmo->link_map_size);

      /* Read the link map into our internal structure.  */
      FUNC7 (lm, objfile_lm_info.lm, lmo->link_map_size);

      /* Read address of name from target memory to GDB.  */
      FUNC7 (lm + lmo->l_name_offset, l_name_buf, lmo->l_name_size);

      /* Extract this object's name.  Assume that the address is
         unsigned.  */
      name_address = FUNC2 (l_name_buf, lmo->l_name_size);
      FUNC10 (name_address, &buffer,
      			  SO_NAME_MAX_PATH_SIZE - 1, &errcode);
      FUNC5 (xfree, buffer);
      if (errcode != 0)
    	{
	  FUNC11 ("svr4_fetch_objfile_link_map: Can't read pathname for load map: %s\n",
  		   FUNC8 (errcode));
  	}
      else
  	{
	  /* Is this the linkmap for the file we want?  */
	  /* If the file is not a shared library and has no name,
	     we are sure it is the main executable, so we return that.  */
	  if ((buffer && FUNC9 (buffer, objfile->name) == 0)
              || (!(objfile->flags & OBJF_SHARED) && (FUNC9 (buffer, "") == 0)))
  	    {
    	      FUNC1 (old_chain);
    	      return lm;
      	    }
  	}
      /* Not the file we wanted, continue checking.  Assume that the
         address is unsigned.  */
      lm = FUNC2 (objfile_lm_info.lm + lmo->l_next_offset,
				     lmo->l_next_size);
      FUNC1 (old_chain);
    }
  return 0;
}