#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct tui_gen_win_info {int width; int /*<<< orphan*/  type; } ;
typedef  enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
typedef  enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;
struct TYPE_16__ {void* can_highlight; } ;
struct TYPE_13__ {void* has_locator; struct tui_gen_win_info* execution_info; } ;
struct TYPE_14__ {TYPE_2__ source_info; } ;
struct TYPE_15__ {TYPE_3__ detail; struct tui_gen_win_info generic; } ;
struct TYPE_12__ {int height; } ;
struct TYPE_11__ {TYPE_1__ generic; } ;

/* Variables and functions */
 int DISASSEM_WIN ; 
 int /*<<< orphan*/  DONT_BOX_WINDOW ; 
 int /*<<< orphan*/  EXEC_INFO_WIN ; 
 int /*<<< orphan*/  LOCATOR_WIN ; 
 int SRC_DATA_COMMAND ; 
 int SRC_WIN ; 
 void* TRUE ; 
 TYPE_10__* TUI_CMD_WIN ; 
 TYPE_8__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tui_gen_win_info*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 struct tui_gen_win_info* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 () ; 
 TYPE_4__** tui_win_list ; 

__attribute__((used)) static void
FUNC14 (enum tui_layout_type new_layout)
{
  int total_height = (FUNC12 () - TUI_CMD_WIN->generic.height);
  int src_height, data_height;
  enum tui_win_type win_type;
  struct tui_gen_win_info * locator = FUNC6 ();


  data_height = total_height / 2;
  src_height = total_height - data_height;
  FUNC7 ();
  FUNC8 (locator);
  FUNC2 (&TUI_DATA_WIN, data_height, 0);
  TUI_DATA_WIN->can_highlight = TRUE;
  if (new_layout == SRC_DATA_COMMAND)
    win_type = SRC_WIN;
  else
    win_type = DISASSEM_WIN;
  if (tui_win_list[win_type] == NULL)
    {
      if (win_type == SRC_WIN)
	FUNC4 (&tui_win_list[win_type], src_height, data_height - 1);
      else
	FUNC3 (&tui_win_list[win_type], src_height, data_height - 1);
      FUNC0 ((void **) & locator,
		       LOCATOR_WIN,
		       2 /* 1 */ ,
		       FUNC13 (),
		       0,
		       total_height - 1,
		       DONT_BOX_WINDOW);
    }
  else
    {
      FUNC1 (&tui_win_list[win_type]->generic,
		       tui_win_list[win_type]->generic.type,
		       src_height,
		       tui_win_list[win_type]->generic.width,
		   tui_win_list[win_type]->detail.source_info.execution_info->width,
		       data_height - 1);
      FUNC1 (tui_win_list[win_type]->detail.source_info.execution_info,
		       EXEC_INFO_WIN,
		       src_height,
		       3,
		       0,
		       data_height - 1);
      FUNC9 (&tui_win_list[win_type]->generic);
      FUNC9 (tui_win_list[win_type]->detail.source_info.execution_info);
      FUNC1 (locator,
		       LOCATOR_WIN,
		       2 /* 1 */ ,
		       FUNC13 (),
		       0,
		       total_height - 1);
    }
  tui_win_list[win_type]->detail.source_info.has_locator = TRUE;
  FUNC9 (locator);
  FUNC11 ();
  FUNC5 (tui_win_list[win_type]);
  FUNC10 (new_layout);
}