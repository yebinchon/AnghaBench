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
struct ui_file {int dummy; } ;
typedef  enum regcache_dump_what { ____Placeholder_regcache_dump_what } regcache_dump_what ;

/* Variables and functions */
 int /*<<< orphan*/  current_regcache ; 
 struct ui_file* FUNC0 (char*,char*) ; 
 struct ui_file* gdb_stdout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ui_file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*) ; 

__attribute__((used)) static void
FUNC4 (char *args, enum regcache_dump_what what_to_dump)
{
  if (args == NULL)
    FUNC2 (current_regcache, gdb_stdout, what_to_dump);
  else
    {
      struct ui_file *file = FUNC0 (args, "w");
      if (file == NULL)
	FUNC1 ("maintenance print architecture");
      FUNC2 (current_regcache, file, what_to_dump);    
      FUNC3 (file);
    }
}