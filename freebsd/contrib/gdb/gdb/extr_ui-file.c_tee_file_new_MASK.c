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
struct tee_file {int close_one; int close_two; struct ui_file* two; struct ui_file* one; int /*<<< orphan*/ * magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,struct tee_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tee_file_delete ; 
 int /*<<< orphan*/  tee_file_flush ; 
 int /*<<< orphan*/  tee_file_fputs ; 
 int /*<<< orphan*/  tee_file_isatty ; 
 int /*<<< orphan*/  tee_file_magic ; 
 int /*<<< orphan*/  tee_file_write ; 
 struct ui_file* FUNC5 () ; 
 struct tee_file* FUNC6 (int) ; 

struct ui_file *
FUNC7 (struct ui_file *one, int close_one,
	      struct ui_file *two, int close_two)
{
  struct ui_file *ui_file = FUNC5 ();
  struct tee_file *tee = FUNC6 (sizeof (struct tee_file));
  tee->magic = &tee_file_magic;
  tee->one = one;
  tee->two = two;
  tee->close_one = close_one;
  tee->close_two = close_two;
  FUNC0 (ui_file, tee, tee_file_delete);
  FUNC1 (ui_file, tee_file_flush);
  FUNC4 (ui_file, tee_file_write);
  FUNC2 (ui_file, tee_file_fputs);
  FUNC3 (ui_file, tee_file_isatty);
  return ui_file;
}