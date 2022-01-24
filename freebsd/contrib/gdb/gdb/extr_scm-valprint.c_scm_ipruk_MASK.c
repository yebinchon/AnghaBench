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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (char *hdr, LONGEST ptr, struct ui_file *stream)
{
  FUNC3 (stream, "#<unknown-%s", hdr);
#define SCM_SIZE TYPE_LENGTH (builtin_type_scm)
  if (FUNC2 (ptr))
    FUNC3 (stream, " (0x%lx . 0x%lx) @",
		      (long) FUNC0 (ptr), (long) FUNC1 (ptr));
  FUNC3 (stream, " 0x%s>", FUNC4 (ptr));
}