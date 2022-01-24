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
struct tui_stream {int /*<<< orphan*/ * ts_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,struct tui_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tui_file_delete ; 
 int /*<<< orphan*/  tui_file_flush ; 
 int /*<<< orphan*/  tui_file_fputs ; 
 int /*<<< orphan*/  tui_file_isatty ; 
 int /*<<< orphan*/  tui_file_magic ; 
 int /*<<< orphan*/  tui_file_put ; 
 int /*<<< orphan*/  tui_file_rewind ; 
 struct ui_file* FUNC6 () ; 
 struct tui_stream* FUNC7 (int) ; 

__attribute__((used)) static struct ui_file *
FUNC8 (void)
{
  struct tui_stream *tui = FUNC7 (sizeof (struct tui_stream));
  struct ui_file *file = FUNC6 ();
  FUNC0 (file, tui, tui_file_delete);
  FUNC1 (file, tui_file_flush);
  FUNC2 (file, tui_file_fputs);
  FUNC3 (file, tui_file_isatty);
  FUNC5 (file, tui_file_rewind);
  FUNC4 (file, tui_file_put);
  tui->ts_magic = &tui_file_magic;
  return file;
}