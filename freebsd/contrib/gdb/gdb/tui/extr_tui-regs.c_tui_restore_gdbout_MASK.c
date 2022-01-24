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
struct ui_file {int dummy; } ;

/* Variables and functions */
 struct ui_file* gdb_stdout ; 
 int pagination_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*) ; 

__attribute__((used)) static void
FUNC1 (void *ui)
{
  FUNC0 (gdb_stdout);
  gdb_stdout = (struct ui_file*) ui;
  pagination_enabled = 1;
}