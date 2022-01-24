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
struct tui_win_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (struct tui_win_info**,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC1 (struct tui_win_info * * win_info_ptr, int height, int origin_y)
{
  FUNC0 (win_info_ptr, SRC_WIN, height, origin_y);

  return;
}