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
struct frame_info {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct block*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*) ; 
 struct block* FUNC3 (struct frame_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct block*,struct frame_info*,int,struct ui_file*) ; 

__attribute__((used)) static void
FUNC5 (struct frame_info *fi, int num_tabs,
			struct ui_file *stream)
{
  struct block *block = FUNC3 (fi, 0);
  int values_printed = 0;

  if (block == 0)
    {
      FUNC2 (stream, "No symbol table info available.\n");
      return;
    }

  while (block != 0)
    {
      if (FUNC4 (block, fi, num_tabs, stream))
	values_printed = 1;
      /* After handling the function's top-level block, stop.
         Don't continue to its superblock, the block of
         per-file symbols.  */
      if (FUNC0 (block))
	break;
      block = FUNC1 (block);
    }

  if (!values_printed)
    {
      FUNC2 (stream, "No locals.\n");
    }
}