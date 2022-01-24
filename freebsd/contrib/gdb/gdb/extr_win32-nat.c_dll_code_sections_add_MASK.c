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
struct target_ops {int dummy; } ;
struct TYPE_2__ {scalar_t__ addr; struct target_ops* target; } ;
typedef  TYPE_1__ map_code_section_args ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_single_dll_code_section ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int
  FUNC6 (const char *dll_name, int base_addr, struct target_ops *target)
{
  bfd *dll_bfd;
  map_code_section_args map_args;
  asection *lowest_sect;
  char *name;
  if (dll_name == NULL || target == NULL)
    return 0;
  name = FUNC5 (dll_name);
  dll_bfd = FUNC3 (name, "pei-i386");
  if (dll_bfd == NULL)
    return 0;

  if (FUNC0 (dll_bfd, bfd_object))
    {
      lowest_sect = FUNC1 (dll_bfd, ".text");
      if (lowest_sect == NULL)
	return 0;
      map_args.target = target;
      map_args.addr = base_addr - FUNC4 (dll_bfd, lowest_sect);

      FUNC2 (dll_bfd, &map_single_dll_code_section, (void *) (&map_args));
    }

  return 1;
}