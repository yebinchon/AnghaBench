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
struct so_list {int /*<<< orphan*/  so_name; TYPE_1__* lm_info; } ;
struct read_map_ctxt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  isloader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct read_map_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct read_map_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct so_list*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct read_map_ctxt*,struct so_list*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ symfile_objfile ; 

__attribute__((used)) static int
FUNC6 (void *from_ttyp)
{
  struct read_map_ctxt ctxt;
  struct so_list so;
  int found;

  if (symfile_objfile)
    if (!FUNC3 ("Attempt to reload symbols from process? "))
      return 0;

  /* The first module after /sbin/loader is the main program.  */
  if (!FUNC1 (&ctxt))
    return 0;
  for (found = 0; !found;)
    {
      if (!FUNC4 (&ctxt, &so))
	break;
      found = !so.lm_info->isloader;
      FUNC2 (&so);
    }
  FUNC0 (&ctxt);

  if (found)
    FUNC5 (so.so_name, *(int *) from_ttyp);
  return found;
}