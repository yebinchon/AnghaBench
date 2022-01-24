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
struct ui_file {int /*<<< orphan*/ * magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  null_file_delete ; 
 int /*<<< orphan*/  null_file_flush ; 
 int /*<<< orphan*/  null_file_fputs ; 
 int /*<<< orphan*/  null_file_isatty ; 
 int /*<<< orphan*/  null_file_put ; 
 int /*<<< orphan*/  null_file_read ; 
 int /*<<< orphan*/  null_file_rewind ; 
 int /*<<< orphan*/  null_file_write ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_file_magic ; 
 struct ui_file* FUNC8 (int) ; 

struct ui_file *
FUNC9 (void)
{
  struct ui_file *file = FUNC8 (sizeof (struct ui_file));
  file->magic = &ui_file_magic;
  FUNC0 (file, NULL, null_file_delete);
  FUNC1 (file, null_file_flush);
  FUNC7 (file, null_file_write);
  FUNC2 (file, null_file_fputs);
  FUNC5 (file, null_file_read);
  FUNC3 (file, null_file_isatty);
  FUNC6 (file, null_file_rewind);
  FUNC4 (file, null_file_put);
  return file;
}