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
struct ui_out {TYPE_1__* impl; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct ui_out*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*) ; 

void
FUNC1 (struct ui_out *uiout)
{
  if (!uiout->impl->flush)
    return;
  uiout->impl->flush (uiout);
}