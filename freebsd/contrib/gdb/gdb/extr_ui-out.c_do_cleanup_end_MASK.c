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
struct ui_out_end_cleanup_data {int /*<<< orphan*/  type; int /*<<< orphan*/  uiout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out_end_cleanup_data*) ; 

__attribute__((used)) static void
FUNC2 (void *data)
{
  struct ui_out_end_cleanup_data *end_cleanup_data = data;
  FUNC0 (end_cleanup_data->uiout, end_cleanup_data->type);
  FUNC1 (end_cleanup_data);
}