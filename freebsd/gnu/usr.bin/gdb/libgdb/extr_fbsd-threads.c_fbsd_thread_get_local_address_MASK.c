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
typedef  int /*<<< orphan*/  td_thrhandle_t ;
struct objfile {int flags; char* name; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int OBJF_SHARED ; 
 int TD_OK ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct objfile*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

CORE_ADDR
FUNC9(ptid_t ptid, struct objfile *objfile,
                              CORE_ADDR offset)
{
  td_thrhandle_t th;
  void *address;
  CORE_ADDR lm;
  void *lm2;
  int ret, is_library = (objfile->flags & OBJF_SHARED);

  if (FUNC1 (ptid))
    {
      if (!&td_thr_tls_get_addr_p)
        FUNC2 ("Cannot find thread-local interface in thread_db library.");

      /* Get the address of the link map for this objfile. */
      lm = FUNC5 (objfile);

      /* Couldn't find link map. Bail out. */
      if (!lm)
        {
          if (is_library)
            FUNC2 ("Cannot find shared library `%s' link_map in dynamic"
                   " linker's module list", objfile->name);
          else
            FUNC2 ("Cannot find executable file `%s' link_map in dynamic"
                   " linker's module list", objfile->name);
        }

      ret = FUNC6 (thread_agent, FUNC0(ptid), &th);

      /* get the address of the variable. */
      FUNC4(&lm2, builtin_type_void_data_ptr, lm);
      ret = FUNC7 (&th, lm2, offset, &address);

      if (ret != TD_OK)
        {
          if (is_library)
            FUNC2 ("Cannot find thread-local storage for thread %ld, "
                   "shared library %s:\n%s",
                   (long) FUNC0 (ptid),
                   objfile->name, FUNC8 (ret));
          else
            FUNC2 ("Cannot find thread-local storage for thread %ld, "
                   "executable file %s:\n%s",
                   (long) FUNC0 (ptid),
                   objfile->name, FUNC8 (ret));
        }

      /* Cast assuming host == target. */
      return FUNC3(&address, builtin_type_void_data_ptr);
    }
  return (0);
}