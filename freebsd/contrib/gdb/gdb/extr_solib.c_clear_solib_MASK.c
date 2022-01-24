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
struct so_list {scalar_t__ abfd; struct so_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_aout_flavour ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * exec_bfd ; 
 int /*<<< orphan*/  FUNC3 (struct so_list*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct so_list* so_list_head ; 

void
FUNC5 (void)
{
  /* This function is expected to handle ELF shared libraries.  It is
     also used on Solaris, which can run either ELF or a.out binaries
     (for compatibility with SunOS 4), both of which can use shared
     libraries.  So we don't know whether we have an ELF executable or
     an a.out executable until the user chooses an executable file.

     ELF shared libraries don't get mapped into the address space
     until after the program starts, so we'd better not try to insert
     breakpoints in them immediately.  We have to wait until the
     dynamic linker has loaded them; we'll hit a bp_shlib_event
     breakpoint (look for calls to create_solib_event_breakpoint) when
     it's ready.

     SunOS shared libraries seem to be different --- they're present
     as soon as the process begins execution, so there's no need to
     put off inserting breakpoints.  There's also nowhere to put a
     bp_shlib_event breakpoint, so if we put it off, we'll never get
     around to it.

     So: disable breakpoints only if we're using ELF shared libs.  */
  if (exec_bfd != NULL
      && FUNC1 (exec_bfd) != bfd_target_aout_flavour)
    FUNC2 (1);

  while (so_list_head)
    {
      struct so_list *so = so_list_head;
      so_list_head = so->next;
      if (so->abfd)
	FUNC4 (so->abfd);
      FUNC3 (so);
    }

  FUNC0 ();
}