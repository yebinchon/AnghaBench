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
 int /*<<< orphan*/  do_cleanup_table_end ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,struct ui_out*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_out*,int,int,char const*) ; 

struct cleanup *
FUNC2 (struct ui_out *ui_out, int nr_cols,
                                     int nr_rows, const char *tblid)
{
  FUNC1 (ui_out, nr_cols, nr_rows, tblid);
  return FUNC0 (do_cleanup_table_end, ui_out);
}