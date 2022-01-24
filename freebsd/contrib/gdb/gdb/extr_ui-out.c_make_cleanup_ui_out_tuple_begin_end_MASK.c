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
struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 struct cleanup* FUNC0 (struct ui_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  ui_out_type_tuple ; 

struct cleanup *
FUNC2 (struct ui_out *uiout,
				     const char *id)
{
  FUNC1 (uiout, ui_out_type_tuple, id);
  return FUNC0 (uiout, ui_out_type_tuple);
}