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
struct tui_gen_win_info {int width; int /*<<< orphan*/ * handle; } ;
struct tui_data_element {scalar_t__ highlight; int /*<<< orphan*/  content; } ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tui_gen_win_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (struct tui_data_element *data,
                      struct tui_gen_win_info *win_info)
{
  if (win_info->handle != (WINDOW *) NULL)
    {
      int i;

      if (data->highlight)
	FUNC5 (win_info->handle);
      
      FUNC3 (win_info->handle, 0, 0);
      for (i = 1; i < win_info->width; i++)
        FUNC1 (win_info->handle, ' ');
      FUNC3 (win_info->handle, 0, 0);
      if (data->content)
        FUNC2 (win_info->handle, data->content);

      if (data->highlight)
	FUNC4 (win_info->handle);
      FUNC0 (win_info);
    }
}