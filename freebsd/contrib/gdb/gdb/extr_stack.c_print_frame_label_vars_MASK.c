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
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct block* FUNC0 (struct blockvector*,int) ; 
 int FUNC1 (struct blockvector*) ; 
 scalar_t__ FUNC2 (struct block*) ; 
 scalar_t__ FUNC3 (struct block*) ; 
 struct block* FUNC4 (struct block*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct blockvector* FUNC6 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*) ; 
 struct block* FUNC9 (struct frame_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct block*,int*,struct ui_file*) ; 

__attribute__((used)) static void
FUNC13 (struct frame_info *fi, int this_level_only,
			struct ui_file *stream)
{
  struct blockvector *bl;
  struct block *block = FUNC9 (fi, 0);
  int values_printed = 0;
  int index, have_default = 0;
  char *blocks_printed;
  CORE_ADDR pc = FUNC10 (fi);

  if (block == 0)
    {
      FUNC8 (stream, "No symbol table info available.\n");
      return;
    }

  bl = FUNC6 (FUNC2 (block) - 4, &index);
  blocks_printed = (char *) FUNC5 (FUNC1 (bl) * sizeof (char));
  FUNC11 (blocks_printed, 0, FUNC1 (bl) * sizeof (char));

  while (block != 0)
    {
      CORE_ADDR end = FUNC2 (block) - 4;
      int last_index;

      if (bl != FUNC6 (end, &index))
	FUNC7 ("blockvector blotch");
      if (FUNC0 (bl, index) != block)
	FUNC7 ("blockvector botch");
      last_index = FUNC1 (bl);
      index += 1;

      /* Don't print out blocks that have gone by.  */
      while (index < last_index
	     && FUNC2 (FUNC0 (bl, index)) < pc)
	index++;

      while (index < last_index
	     && FUNC2 (FUNC0 (bl, index)) < end)
	{
	  if (blocks_printed[index] == 0)
	    {
	      if (FUNC12 (FUNC0 (bl, index), &have_default, stream))
		values_printed = 1;
	      blocks_printed[index] = 1;
	    }
	  index++;
	}
      if (have_default)
	return;
      if (values_printed && this_level_only)
	return;

      /* After handling the function's top-level block, stop.
         Don't continue to its superblock, the block of
         per-file symbols.  */
      if (FUNC3 (block))
	break;
      block = FUNC4 (block);
    }

  if (!values_printed && !this_level_only)
    {
      FUNC8 (stream, "No catches.\n");
    }
}