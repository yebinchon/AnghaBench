#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ui_out {int dummy; } ;
struct ui_file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ mi_out_data ;

/* Variables and functions */
 int /*<<< orphan*/  do_write ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct ui_out*) ; 

void
FUNC3 (struct ui_out *uiout,
	    struct ui_file *stream)
{
  mi_out_data *data = FUNC2 (uiout);
  FUNC0 (data->buffer, do_write, stream);
  FUNC1 (data->buffer);
}