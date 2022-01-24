#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; void* is_visible; int /*<<< orphan*/ * handle; int /*<<< orphan*/ * content; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_content_count; int /*<<< orphan*/  data_content; int /*<<< orphan*/  regs_content_count; int /*<<< orphan*/  regs_content; } ;
struct TYPE_5__ {struct tui_gen_win_info* execution_info; int /*<<< orphan*/  filename; } ;
struct TYPE_7__ {TYPE_2__ data_display_info; TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_4__ generic; TYPE_3__ detail; } ;
struct tui_gen_win_info {void* is_visible; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
#define  DATA_WIN 130 
#define  DISASSEM_WIN 129 
 void* FALSE ; 
#define  SRC_WIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tui_gen_win_info* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (struct tui_win_info * win_info)
{
  struct tui_gen_win_info * generic_win;

  switch (win_info->generic.type)
    {
    case SRC_WIN:
    case DISASSEM_WIN:
      generic_win = FUNC2 ();
      if (generic_win != (struct tui_gen_win_info *) NULL)
	{
	  FUNC1 (generic_win->handle);
	  generic_win->handle = (WINDOW *) NULL;
	  generic_win->is_visible = FALSE;
	}
      if (win_info->detail.source_info.filename)
        {
          FUNC3 (win_info->detail.source_info.filename);
          win_info->detail.source_info.filename = 0;
        }
      generic_win = win_info->detail.source_info.execution_info;
      if (generic_win != (struct tui_gen_win_info *) NULL)
	{
	  FUNC1 (generic_win->handle);
	  generic_win->handle = (WINDOW *) NULL;
	  generic_win->is_visible = FALSE;
	}
      break;
    case DATA_WIN:
      if (win_info->generic.content != NULL)
	{
	  FUNC0 (win_info->detail.data_display_info.regs_content,
				win_info->detail.data_display_info.regs_content_count);
	  FUNC0 (win_info->detail.data_display_info.data_content,
				win_info->detail.data_display_info.data_content_count);
	}
      break;
    default:
      break;
    }
  if (win_info->generic.handle != (WINDOW *) NULL)
    {
      FUNC1 (win_info->generic.handle);
      win_info->generic.handle = (WINDOW *) NULL;
      win_info->generic.is_visible = FALSE;
    }
}