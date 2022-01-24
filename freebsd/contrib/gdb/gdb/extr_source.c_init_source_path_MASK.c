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

/* Variables and functions */
 int DIRNAME_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  source_path ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3 (void)
{
  char buf[20];

  FUNC1 (buf, "$cdir%c$cwd", DIRNAME_SEPARATOR);
  source_path = FUNC2 (buf);
  FUNC0 ();
}