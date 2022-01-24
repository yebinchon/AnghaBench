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
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ui_file*) ; 

__attribute__((used)) static void
FUNC2 (int ch, struct ui_file *file)
{
  if (ch == '\n')
    FUNC1 ('\n', file);
  else if (ch == '\r')
    FUNC0 (file, "\\r");
  else if (ch < 0x20)		/* ASCII control character */
    FUNC0 (file, "^%c", ch + '@');
  else if (ch >= 0x7f)		/* non-ASCII characters (rubout or greater) */
    FUNC0 (file, "[%02x]", ch & 0xff);
  else
    FUNC1 (ch, file);
}