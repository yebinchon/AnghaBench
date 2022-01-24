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
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* mips_monitor_prompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3 (const char *cmd, int prompt)
{
  FUNC1 (mips_desc, cmd, FUNC2 (cmd));
  FUNC0 (cmd);
  FUNC0 ("\n");
  if (prompt)
    FUNC0 (mips_monitor_prompt);
}