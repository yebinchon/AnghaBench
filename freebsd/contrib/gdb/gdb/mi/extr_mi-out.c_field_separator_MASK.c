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
struct TYPE_3__ {int /*<<< orphan*/  buffer; scalar_t__ suppress_field_separator; } ;
typedef  TYPE_1__ mi_out_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct ui_out*) ; 

__attribute__((used)) static void
FUNC2 (struct ui_out *uiout)
{
  mi_out_data *data = FUNC1 (uiout);
  if (data->suppress_field_separator)
    data->suppress_field_separator = 0;
  else
    FUNC0 (',', data->buffer);
}