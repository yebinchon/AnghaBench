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
typedef  int /*<<< orphan*/  mi_out_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ui_out*) ; 
 int /*<<< orphan*/  ui_out_type_list ; 
 int /*<<< orphan*/  ui_out_type_tuple ; 

void
FUNC3 (struct ui_out *uiout,
		int nr_cols,
		int nr_rows,
		const char *tblid)
{
  mi_out_data *data = FUNC2 (uiout);
  FUNC1 (uiout, tblid, ui_out_type_tuple);
  FUNC0 (uiout, -1/*fldno*/, -1/*width*/, -1/*alin*/,
		"nr_rows", nr_rows);
  FUNC0 (uiout, -1/*fldno*/, -1/*width*/, -1/*alin*/,
		"nr_cols", nr_cols);
  FUNC1 (uiout, "hdr", ui_out_type_list);
}