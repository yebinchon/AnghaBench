#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct section_addr_info {TYPE_1__* other; } ;
struct objfile {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  OBJF_SHARED ; 
 struct section_addr_info* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC5 (struct section_addr_info*) ; 
 struct section_addr_info* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,struct section_addr_info*) ; 
 struct objfile* FUNC8 (char*,int,struct section_addr_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static struct objfile *
FUNC9 (char *name, int from_tty, CORE_ADDR load_addr)
{
  struct section_addr_info *addrs = NULL;
  static struct objfile *result = NULL;
  bfd *abfd = NULL;

  /* The symbols in a dll are offset by 0x1000, which is the
     the offset from 0 of the first byte in an image - because
     of the file header and the section alignment. */

  if (!name || !name[0])
    return NULL;

  abfd = FUNC3 (name, "pei-i386");

  if (!abfd)
    {
      /* pei failed - try pe */
      abfd = FUNC3 (name, "pe-i386");
    }

  if (abfd)
    {
      if (FUNC1 (abfd, bfd_object))
	{
	  addrs = FUNC6 (abfd, load_addr);
	}

      FUNC2 (abfd);
    }

  if (addrs)
    {
      result = FUNC8 (name, from_tty, addrs, 0, OBJF_SHARED);
      FUNC5 (addrs);
    }
  else
    {
      /* Fallback on handling just the .text section. */
      struct cleanup *my_cleanups;

      addrs = FUNC0 (1);
      my_cleanups = FUNC7 (xfree, addrs);
      addrs->other[0].name = ".text";
      addrs->other[0].addr = load_addr;

      result = FUNC8 (name, from_tty, addrs, 0, OBJF_SHARED);
      FUNC4 (my_cleanups);
    }

  return result;
}