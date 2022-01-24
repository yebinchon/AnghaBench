#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union tui_line_or_address {int /*<<< orphan*/  addr; int /*<<< orphan*/  line_no; } ;
struct TYPE_10__ {int /*<<< orphan*/  curch; int /*<<< orphan*/  cur_line; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  line_no; } ;
struct TYPE_9__ {TYPE_1__ start_line_or_addr; TYPE_5__* execution_info; } ;
struct TYPE_11__ {TYPE_3__ command_info; TYPE_2__ source_info; } ;
struct TYPE_12__ {int type; int /*<<< orphan*/  handle; int /*<<< orphan*/ * content; } ;
struct tui_win_info {TYPE_4__ detail; TYPE_5__ generic; } ;
struct symtab_and_line {int /*<<< orphan*/  line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
#define  CMD_WIN 131 
#define  DATA_WIN 130 
#define  DISASSEM_WIN 129 
#define  SRC_WIN 128 
 int /*<<< orphan*/  TRUE ; 
 struct frame_info* deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (struct symtab*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct symtab* FUNC1 (int /*<<< orphan*/ ) ; 
 struct symtab_and_line FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_5__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct tui_win_info*,struct symtab*,union tui_line_or_address,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (struct tui_win_info * win_info)
{
  struct symtab *s;

  FUNC8 (&win_info->generic);
  FUNC4 (win_info);
  switch (win_info->generic.type)
    {
    case SRC_WIN:
    case DISASSEM_WIN:
      FUNC6 (win_info->detail.source_info.execution_info);
      FUNC8 (win_info->detail.source_info.execution_info);
      if (win_info->generic.content != NULL)
	{
	  union tui_line_or_address line_or_addr;
	  struct symtab_and_line cursal
	    = FUNC2 ();

	  if (win_info->generic.type == SRC_WIN)
	    line_or_addr.line_no =
	      win_info->detail.source_info.start_line_or_addr.line_no;
	  else
	    line_or_addr.addr =
	      win_info->detail.source_info.start_line_or_addr.addr;
	  FUNC6 (&win_info->generic);
	  FUNC10 (win_info, cursal.symtab, line_or_addr, TRUE);
	}
      else if (deprecated_selected_frame != (struct frame_info *) NULL)
	{
	  union tui_line_or_address line;
	  struct symtab_and_line cursal = FUNC2 ();


	  s = FUNC1 (FUNC3 (deprecated_selected_frame));
	  if (win_info->generic.type == SRC_WIN)
	    line.line_no = cursal.line;
	  else
	    {
	      FUNC0 (s, cursal.line, &line.addr);
	    }
	  FUNC10 (win_info, s, line, TRUE);
	}
      if (FUNC11 (win_info))
	{
	  FUNC8 (FUNC7 ());
	  FUNC9 ();
	}
      break;
    case DATA_WIN:
      FUNC5 ();
      break;
    case CMD_WIN:
      win_info->detail.command_info.cur_line = 0;
      win_info->detail.command_info.curch = 0;
      FUNC12 (win_info->generic.handle,
	     win_info->detail.command_info.cur_line,
	     win_info->detail.command_info.curch);
      break;
    default:
      break;
    }
}