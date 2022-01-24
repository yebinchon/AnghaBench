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
struct ui_out {scalar_t__ level; } ;
typedef  enum ui_out_type { ____Placeholder_ui_out_type } ui_out_type ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 scalar_t__ MAX_UI_OUT_LEVELS ; 
 TYPE_1__* FUNC0 (struct ui_out*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (struct ui_out *uiout,
	   enum ui_out_type type)
{
  /* We had better not underflow the buffer. */
  FUNC1 (uiout->level > 0 && uiout->level < MAX_UI_OUT_LEVELS);
  FUNC1 (FUNC0 (uiout)->type == type);
  uiout->level--;
  return uiout->level + 1;
}