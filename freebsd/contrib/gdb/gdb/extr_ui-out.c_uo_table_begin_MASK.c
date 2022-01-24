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
struct TYPE_2__ {int /*<<< orphan*/  (* table_begin ) (struct ui_out*,int,int,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*,int,int,char const*) ; 

void
FUNC1 (struct ui_out *uiout, int nbrofcols,
		int nr_rows,
		const char *tblid)
{
  if (!uiout->impl->table_begin)
    return;
  uiout->impl->table_begin (uiout, nbrofcols, nr_rows, tblid);
}