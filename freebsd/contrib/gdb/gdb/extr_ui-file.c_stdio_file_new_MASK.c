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
struct stdio_file {int close_p; int /*<<< orphan*/ * file; int /*<<< orphan*/ * magic; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,struct stdio_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdio_file_delete ; 
 int /*<<< orphan*/  stdio_file_flush ; 
 int /*<<< orphan*/  stdio_file_fputs ; 
 int /*<<< orphan*/  stdio_file_isatty ; 
 int /*<<< orphan*/  stdio_file_magic ; 
 int /*<<< orphan*/  stdio_file_read ; 
 int /*<<< orphan*/  stdio_file_write ; 
 struct ui_file* FUNC6 () ; 
 struct stdio_file* FUNC7 (int) ; 

__attribute__((used)) static struct ui_file *
FUNC8 (FILE *file, int close_p)
{
  struct ui_file *ui_file = FUNC6 ();
  struct stdio_file *stdio = FUNC7 (sizeof (struct stdio_file));
  stdio->magic = &stdio_file_magic;
  stdio->file = file;
  stdio->close_p = close_p;
  FUNC0 (ui_file, stdio, stdio_file_delete);
  FUNC1 (ui_file, stdio_file_flush);
  FUNC5 (ui_file, stdio_file_write);
  FUNC2 (ui_file, stdio_file_fputs);
  FUNC4 (ui_file, stdio_file_read);
  FUNC3 (ui_file, stdio_file_isatty);
  return ui_file;
}